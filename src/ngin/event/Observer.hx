package event;

class Observer {

  private var observers:Array<Observable> = [];

  public function new() { }

  private function notify<T>(?data:T) {
    for(obs in observers)
      obs.notified(this, data);
  }

  public function addObserver(observer:Observable) {
    observers.push(observer);
  }
}
