*** Keywords ***
Get Item Name
  ${item}=    Get Text    css=.title
  RETURN    ${item}

Get Item Price
  ${price}=    Get Text    //span[@data-reactid='.0.0.0.2.0.0.2.1']
  RETURN    ${price}

Verify Button Buy Now
  ${locator}=   Set Variable       css=.buy
  Wait Until Element Is Visible    ${locator}
  RETURN    ${locator}

Click Button Buy Now
  ${locator}=   Verify Button Buy Now
  Click Element    ${locator}

Verify Notification Payment Success
  Wait Until Element Is Visible   //div[@class='center desc']    timeout=10
