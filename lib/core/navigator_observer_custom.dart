import 'package:flutter/material.dart';

class NavigatorObserverCustom extends NavigatorObserver{

  // A ideia aqui é que voce so observe(LOGs) nao mude nada...
  @override
  void didPush(Route route, Route? previousRoute) {
    // TODO: Antes de executar o Push
    super.didPush(route, previousRoute);
  }
  
  @override
  void didPop(Route route, Route? previousRoute) {
    // TODO: Antes de executar o pop
    super.didPop(route, previousRoute);
  }

}