# Atomic Design
Responsável por criar os componentes, e dizer o seu estilo e os parâmetros que precisa para funcionar

## Como criar um componente

1 - A sua classe precisa ser extends da class __Component<T>__

```dart 

class SeuWidget extends Component<StyleDoComponent>{}

``` 

2 - Você precisa criar o style do component

``` dart

class SeuWidgetStyle{
    final Color color;
    SeuWidgetStyle({required this.color});
}

```

3 - Utilizar o construtor super para passar os parâmetros de __TypeComponent__ e __Style<SeuWidgetStyle>__

```dart
class SeuWidget extends Component<SeuWidgetStyle> {
  SeuWidget({
    Key? key,
    required TypeComponent type,
    required Style<SeuWidgetStyle> styles,
  }) : super(type: type, styles: styles, key: key);

```

4 - Implementar a função build junto com a chamada __super.createComponent()__

```dart
class SeuWidget extends Component<SeuWidgetStyle> {
  final String text;
  SeuWidget({
    Key? key,
    required TypeComponent type,
    required Style<SeuWidgetStyle> styles,
    required this.text,
  }) : super(type: type, styles: styles, key: key);

  @override
  Widget build(BuildContext context) {
    return super.createComponent(
      regular: (style) => //Criar Widget Regular,
      loading: (style) => //Criar Widget Loading,
      orElse: () => //Criar Widget Default ou retornar um container,
    );
  }
}

```

5 - Pronto agora temos um componente criado!

6 - Lembrar de criar um arquivo __nome.dart__ e colocar os exports

```dart 
export 'seu_component.dart';
export 'seu_component_style.dart';
```

7 - Colocar o export o __nome.dart__ no atoms, molecules ou organisms

```dart
export 'seu.dart';
```

8 - Component exportado, agora só precisamos configurar no __Tokens__