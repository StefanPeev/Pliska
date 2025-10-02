@echo off

python3 -m fontmake -i -a -o ttf -m Pliska.designspace
python3 -m fontmake -i -a -o otf -m Pliska.designspace
python3 -m fontmake -a -o variable -m Pliska.designspace

python fix-dsig.py .\autohinted\instance_ttf\Pliska-Regular.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Pliska-Medium.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Pliska-SemiBold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Pliska-Bold.ttf |
python fix-dsig.py .\instance_otf\Pliska-Regular.otf |
python fix-dsig.py .\instance_otf\Pliska-Medium.otf |
python fix-dsig.py .\instance_otf\Pliska-SemiBold.otf |
python fix-dsig.py .\instance_otf\Pliska-Bold.otf |

python fix-dsig.py .\variable_ttf\Pliska-VF.ttf |

move .\autohinted\instance_ttf\*.ttf ..\fonts\ttf\
move .\instance_otf\*.otf ..\fonts\otf\
move .\variable_ttf\Pliska-VF.ttf ..\fonts\vf\Pliska[wght].ttf
rmdir .\autohinted\instance_ttf\
rmdir .\autohinted\
rmdir .\instance_otf\
rmdir .\variable_ttf\
python ..\fonts\generate-woff-woff2.py
exit