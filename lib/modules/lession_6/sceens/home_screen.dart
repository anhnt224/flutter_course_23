import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedTab = 0;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedTab = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: 280,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF131313), Color(0xFF313131)],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
          SafeArea(
            child: Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  _buildProfile(),
                  const SizedBox(
                    height: 28,
                  ),
                  _buildSearchBar(),
                  TabBar(
                    indicator: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    indicatorColor: Colors.transparent,
                    dividerColor: Colors.transparent,
                    isScrollable: true,
                    controller: _tabController,
                    tabs: [
                      TabItem(title: 'Cappuccino', active: _selectedTab == 0),
                      TabItem(title: 'Cappuccino', active: _selectedTab == 1),
                      TabItem(title: 'Cappuccino', active: _selectedTab == 2),
                      TabItem(title: 'Cappuccino', active: _selectedTab == 3)
                    ],
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: 400,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Container(
                            color: Colors.white, child: const Text('View 1')),
                        const Text('View2'),
                        const Text('View2'),
                        const Text('View2'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _buildSearchBar() {
    return Container(
      width: double.maxFinite,
      height: 52,
      decoration: const BoxDecoration(
        color: Color(0xFF313131),
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 16,
          ),
          const Icon(
            Icons.search,
            color: Colors.white,
          ),
          const SizedBox(
            width: 12,
          ),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFB7B7B7),
                ),
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFC67C4E),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  12,
                ),
              ),
            ),
            height: 44,
            width: 44,
            child: const Icon(
              Icons.menu_open_sharp,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Row _buildProfile() {
    return Row(
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Location',
                style: TextStyle(fontSize: 12, color: Color(0xFFB7B7B7)),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Text(
                    'Bilzen, Tanjungbalai',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: 44,
          height: 44,
          child: Image.asset('assets/images/avatar.png'),
        ),
      ],
    );
  }
}

class TabItem extends StatelessWidget {
  const TabItem({
    super.key,
    required this.title,
    required this.active,
  });

  final String title;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: active ? const Color(0xFFC67C4E) : Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Text(
        title,
        style:
            TextStyle(color: active ? Colors.white : const Color(0xFF2F4B4E)),
      ),
    );
  }
}
