use chrono::{DateTime, Local};
use std::time::SystemTime;

fn sleep_until(time: SystemTime) {
    loop {
        let now = SystemTime::now();
        if now >= time {
            break;
        }
        let remaining = time.duration_since(now).unwrap();
        std::thread::sleep(remaining);
    }
}

fn main() {
    let port_name = std::env::var("CLOCK_SERIAL_PORT").unwrap_or("/dev/ttyUSB0".into());
    let mut port = serialport::new(&port_name, 115_200)
        .flow_control(serialport::FlowControl::None)
        .open()
        .expect("Could not open port");

    loop {
        write!(port, "\n").unwrap();
        let next_sec = SystemTime::now() + std::time::Duration::from_secs(1);
        let local: DateTime<Local> = DateTime::from(next_sec);
        let local = local.time().format("%H%M%S").to_string();
        write!(port, "{}", local).unwrap();
        sleep_until(next_sec);
    }
}
