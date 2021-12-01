# Tokens
Responsável por configurar o estilo dos seus componentes

## Como configurar o token do componente

1- Criar uma classe com o nome __NomeWidget__

``` dart
class NomeWidget
```

2 - Agora vamos dar extends no component que deseja configurar

``` dart
class NomeWidget extends NomeComponent{}
```

3 - Vamos criar um construtor privado para passar os parâmetros

```dart
class NomeWidget extends NomeComponent{
    NomeWidget._(
        {
            required TypeComponent type,
            required Style<LabelStyle> styles,
        }
    ): super(
        type: type,
        styles: styles,
    );
}
```

4 - Agora vamos criar uma class para configurar os estilos do component.

```dart
class NomeStyles{
    static Style<NomeStyle> regular() => Style<NomeStyle>(...),
      regular: NomeStyle(...);
}
```

5 - Com isso feito, vamos criar o factory regular

``` dart
class NomeWidget extends NomeComponent{
    NomeWidget._(
        {
            required TypeComponent type,
            required Style<LabelStyle> styles,
        }
    ): super(
        type: type,
        styles: styles,
    );

      factory NomeWidget.regular({required TypeComponent type}) =>
      NomeWidget._(
        text: text,
        type: type,
        styles: NomeStyles.regular(),
      );
}
``` 

6 - Agora que já temos tudo configurado, podemos só colocar o exports desse widget, em atoms, molecules ou organisms.

```dart
export 'nome_widget.dart';
``` 

7 - Pronto. Agora só precisa chamar o tokens no projeto que deseja utilizar. Ex:

```dart
 child: NomeWidget(type: ComponentType.regular);
```