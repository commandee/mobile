abstract class Controller<T> {
  void create(T value);

  void update(T value);

  void delete(T value);

  List<T> getAll();
}
