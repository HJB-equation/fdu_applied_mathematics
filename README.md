# 应用数学方法

主要的内容源自复旦大学课程 by 冷思阳

preview: https://hjb-equation.github.io/fdu_applied_mathematics/


## build for web

```bash
flutter build web --release
```

github build action: [flutter-gh-pages](https://github.com/bluefireteam/flutter-gh-pages) | [tutorial](https://www.youtube.com/watch?v=y7Bi7ilCbbQ)

- organization 的 action 需要在 organization 里的 action 中设置， 而不是在 project 下面
- gh-page.yaml 需要设置 baseHref: /your_repo_name/
