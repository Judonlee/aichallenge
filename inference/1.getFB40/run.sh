mkdir fb40
mkdir pcm_vad
isVad=1

find "/dataset" -name '*.pcm' -path '*dev*'  >dev_list_noVAD.txt

if [ ${isVad} -gt 0 ]; then
	for line in `cat dev_list_noVAD.txt`
	    do
		echo $line
		filename="${line##*/}"
		file_id="${filename%.*}"
		./bin/vad $line ./pcm_vad/${file_id}.pcm
	done

	find "pcm_vad" -name '*dev*.pcm'   >dev_list_VAD.txt

	perl get_fb.pl dev_list_VAD.txt fb40 20

else
	perl get_fb.pl dev_list_noVAD.txt fb40 20
fi
