mkdir fb40

# »����ADº��·¼¯ºͿª·¢¼¯µœ��˽¾ށб¼þ
find "/dataset" -name '*train*.pcm' >train_list_noVAD.txt
find "/dataset" -name '*dev*.pcm'   >dev_list_noVAD.txt
cat train_list_noVAD.txt dev_list_noVAD.txt >train_dev_list_noVAD.txt

# ͡ȡFB40άַ͘ 
perl get_fb.pl train_dev_list_noVAD.txt fb40 20
