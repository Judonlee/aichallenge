mkdir fb40

# Â»í¦˜í´—í«ºí¹–ADÂºí ‡í¶Â·Â¼Â¯ÂºÍ¿ÂªÂ·Â¢Â¼Â¯ÂµÅ“í í³´Ë½Â¾ÞÐ±î„Â¼Ã¾
find "/dataset" -name '*train*.pcm' >train_list_noVAD.txt
find "/dataset" -name '*dev*.pcm'   >dev_list_noVAD.txt
cat train_list_noVAD.txt dev_list_noVAD.txt >train_dev_list_noVAD.txt

# Í¡È¡FB40Î¬Í˜Ö· 
perl get_fb.pl train_dev_list_noVAD.txt fb40 20
