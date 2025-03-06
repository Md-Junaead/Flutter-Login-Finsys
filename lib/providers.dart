import 'package:provider/provider.dart';
import 'viewmodels/auth_viewmodel.dart';

final providers = [ChangeNotifierProvider(create: (_) => AuthViewModel())];
