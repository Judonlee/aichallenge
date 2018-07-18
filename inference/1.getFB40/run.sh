mkdir fb40

find "/dataset" -name '*.pcm' -path '*dev*'  >dev_list_noVAD.txt

perl get_fb.pl dev_list_noVAD.txt fb40 20
