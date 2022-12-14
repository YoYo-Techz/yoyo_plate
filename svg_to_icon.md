# svg to flutter icon

## install nodejs

```bash
# requirement [ nodejs verison 10+ ]
 nvm install 12.16.1
```

## 1. svg to iconfont

```bash
# package install
 flutter pub add  icon_font_generator
```

## 2. create icons folder

```bash
# create icons folder
 icon_font_generator --from=icons --class-name=YoYoIcons --out-font=assets/fonts/yoyo_icons.ttf --out-flutter=lib/utils/yoyo_icons.dart
 ```
