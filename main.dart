void main() {
  ProductManager productManager = new ProductManager();
//productManager.Save(new EmailLogger());
  // productManager.Save(new DatabaseLogger());
  productManager.Save(new FileLogger());
}

class ProductManager implements IProductManager {
  @override
  void Save(ILogger logger) {
    print("Ürün Kaydedildi");
    logger.Log("Log data");
  }
}

class IProductManager {
  void Save(ILogger logger) {}
}

//interfaceler referans tip örnegidir.
class ILogger {
  void Log(String message) {}
}

class EmailLogger implements ILogger {
  @override
  void Log(String message) {
    print("Logger Email " + message);
  }
}

class FileLogger implements ILogger {
  @override
  void Log(String message) {
    print("Logger File " + message);
  }
}

class DatabaseLogger implements ILogger {
  @override
  void Log(String message) {
    print("Logger Database " + message);
  }
}
