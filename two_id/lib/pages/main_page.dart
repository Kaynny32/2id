import 'package:flutter/material.dart';
import 'package:two_id/widgets/app_bar/app_bar_actions_custom.dart';
import 'package:two_id/widgets/app_bar/app_bar_title_custom.dart';
import 'package:two_id/widgets/body/body_main.dart';
import 'package:two_id/widgets/text_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  bool _isMenuOpen = false;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = Tween<double>(begin: 300, end: 0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  void _toggleMenu() {
    setState(() {
      _isMenuOpen = !_isMenuOpen;
      if (_isMenuOpen) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  void _closeMenu() {
    setState(() {
      _isMenuOpen = false;
      _animationController.reverse();
    });
  }

  // Версия для компьютера
  Widget _buildDesktopAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppBarTitleCustom(),
        AppBarActionsCustom(),
      ],
    );
  }

  // Версия для телефона
  Widget _buildMobileAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(
          image: const AssetImage('assets/sprites/Logo.png'),
          width: 85,
          height: 43,
        ),
        IconButton(
          onPressed: _toggleMenu,
          icon: Icon(
            Icons.menu,
            color: const Color.fromRGBO(22, 22, 22, 1.0),
            size: 35,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Адаптивная верхняя панель
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: isMobile ? _buildMobileAppBar() : _buildDesktopAppBar(),
                  ),
                  BodyMain(),
                ],
              ),
            ),
          ),

          // Боковое меню (только для мобильной версии)
          if (isMobile && _isMenuOpen)
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: Stack(
                  children: [
                    // Затемнение фона
                    GestureDetector(
                      onTap: _closeMenu,
                      child: Container(
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                    
                    // Боковое меню
                    AnimatedBuilder(
                      animation: _animation,
                      builder: (context, child) {
                        return Positioned(
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Transform.translate(
                            offset: Offset(_animation.value, 0),
                            child: Container(
                              width: 280,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 10,
                                    offset: const Offset(-2, 0),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  // Пункты меню
                                  Expanded(
                                    child: ListView(
                                      padding: const EdgeInsets.all(20),
                                      children: [
                                        Center(
                                          child: PopupMenuButton<String>(
                                            offset: Offset(0, 45), 
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            itemBuilder: (BuildContext context) => [
                                              PopupMenuItem<String>(
                                                value: 'web',
                                                child: Text('Контекстная реклама'),
                                              ),
                                              PopupMenuItem<String>(
                                                value: 'mobile',
                                                child: Text('Таргетированная реклама'),
                                              ),                
                                            ],
                                            onSelected: (String value) {
                                              
                                            },
                                            child: Container(
                                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    'Услуги',
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      color: Color.fromRGBO(22, 22, 22, 1.0),
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.arrow_drop_down,
                                                    color: Color.fromRGBO(22, 22, 22, 1.0),
                                                    size: 20,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),

                                        TextButtonCustom(
                                          onPressed: (){

                                          },
                                          nameButton: 'Кейсы',
                                          colorText: Colors.black,
                                          fontSize: 16,
                                        ),
                                        TextButtonCustom(
                                          onPressed: (){

                                          },
                                          nameButton: 'О нас',
                                          colorText: Colors.black,
                                          fontSize: 16,
                                        ),
                                        TextButtonCustom(
                                          onPressed: (){

                                          },
                                          nameButton: 'Контакты',
                                          colorText: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),

    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}