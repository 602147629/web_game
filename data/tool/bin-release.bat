::�Ȼ�ԭ�����޸ģ������������κ��ֶ��޸ģ����߷����ű���
svn cleanup C:/xampp/htdocs/bin/xhgz/
svn cleanup C:/xampp/htdocs/bin/xhgz/fla/
svn cleanup C:/xampp/htdocs/bin/client_dev/Client/GameRes/
svn cleanup C:/xampp/htdocs/bin/szww_cehua/

svn revert C:/xampp/htdocs/bin/xhgz/ --depth=infinity
svn revert C:/xampp/htdocs/bin/xhgz/fla/ --depth=infinity
svn revert C:/xampp/htdocs/bin/client_dev/Client/GameRes/ --depth=infinity
svn revert C:/xampp/htdocs/bin/szww_cehua/ --depth=infinity

::��������SVN
svn update C:/xampp/htdocs/bin/xhgz/
svn update C:/xampp/htdocs/bin/xhgz/fla/
svn update C:/xampp/htdocs/bin/client_dev/Client/GameRes/
svn update C:/xampp/htdocs/bin/szww_cehua/

::����lib
cd ../szww_cehua/����/��Ѷ/tools
Game.DataC.exe .\ 2
һ������.py C:/xampp/htdocs/bin/client_dev/Client/GameRes/localres/
cd ../../����/tools
Game.DataC.exe .\ 2
һ������.py C:/xampp/htdocs/bin/client_dev/Client/GameRes/localres/
cd ../../../../release

::����������
call ant

::���lang
pack-lang.py C:/xampp/htdocs/bin/client_dev/Client/GameRes/localres/
pack-lang2.py C:/xampp/htdocs/bin/client_dev/Client/GameRes/localres/

::AMD���ܲ�������GameRes
swf-to-amd.py C:/xampp/htdocs/bin/client_dev/Client/GameRes/ui/

::���ɰ汾�ļ�
version.py C:/xampp/htdocs/bin/client_dev/Client/GameRes/

::svn�ύ���ι���
svn commit -m ���幹���ύ C:/xampp/htdocs/bin/xhgz/
svn commit -m ���幹���ύ C:/xampp/htdocs/bin/client_dev/Client/GameRes/
svn commit -m ���幹���ύ C:/xampp/htdocs/bin/szww_cehua/

pause 