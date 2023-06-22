import 'package:flutter/foundation.dart';


class ProductToggle with ChangeNotifier {
  Set<int> _selectedIndices = {}; // initially no items are selected

  Set<int> get selectedIndices => _selectedIndices;

  void toggleSelection(int index, ) {
      if (_selectedIndices.contains(index)) {
        _selectedIndices.remove(index);
        notifyListeners();
      }
      else{
        _selectedIndices.add(index);
        notifyListeners();
      }
  }

  }

