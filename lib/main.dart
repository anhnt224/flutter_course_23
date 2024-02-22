import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course_23/modules/lession_8/auth_bloc_demo.dart/auth_cubit.dart';

// Main
void main() {
  runApp(
    MaterialApp(
      home: BlocProvider(
        create: (_) => AuthCubit(),
        child: const LoginPage(),
      ),
    ),
  );
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  late final _authCubit = context.read<AuthCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đăng nhập'),
      ),
      body: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                    'Đăng nhập thành công với tên đăng nhập: ${state.username}'),
                backgroundColor: Colors.green,
              ),
            );

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          }

          if (state is LoginFailed) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Đăng nhập thất bại: ${state.errorMessage}'),
                backgroundColor: Colors.red,
              ),
            );

            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                content: Text('Đăng nhập thất bại: ${state.errorMessage}'),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        _authCubit.login('admin', 'admin');
                      },
                      child: const Text('Đăng nhập lại'))
                ],
              ),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Tên đăng nhập',
                hintText: 'Nhập tên đăng nhập',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Mật khẩu',
                hintText: 'Nhập tên đăng nhập',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                if (state is LoginIP) {
                  return const CircularProgressIndicator();
                }
                return Container();
              },
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  final username = _usernameController.text;
                  final password = _passwordController.text;
                  print(
                      '>> login ${_usernameController.text} - ${_passwordController.text}');

                  _authCubit.login(username, password);
                },
                child: const Text('Đăng nhập'))
          ]),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Container(),
    );
  }
}
