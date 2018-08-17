mkdir fb40
mkdir pcm_vad
isVad=1

find "/dataset" -name '*train*.pcm' >train_list_noVAD.txt
find "/dataset" -name '*dev*.pcm'   >dev_list_noVAD.txt
cat train_list_noVAD.txt dev_list_noVAD.txt >train_dev_list_noVAD.txt

if [ ${isVad} -gt 0 ]; then
	for line in `cat train_dev_list_noVAD.txt`
	    do
		echo $line
		filename="${line##*/}"
		file_id="${filename%.*}"
		./bin/vad $line ./pcm_vad/${file_id}.pcm
	done

	find "pcm_vad" -name '*train*.pcm' >train_list_VAD.txt
	find "pcm_vad" -name '*dev*.pcm'   >dev_list_VAD.txt
	cat train_list_VAD.txt dev_list_VAD.txt >train_dev_list_VAD.txt

	perl get_fb.pl train_dev_list_VAD.txt fb40 20
else
	perl get_fb.pl train_dev_list_noVAD.txt fb40 20
fi
