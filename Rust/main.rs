extern crate reqwest;

use std::error::Error;

#[tokio::main]
async fn main() -> Result<(), Box<dyn Error>> {
    let response = reqwest::get('http://example.com').await?;
    println!('Status: {}', response.status());
    let body = response.text().await?;
    println!('Body:

{}', body);
    Ok(())
}
