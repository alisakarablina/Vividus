Description: Case2 Reddit.com ;

Scenario: Create account
Given I am on a page with the URL '$https://www.reddit.com/'
When I click on element with the name 'Sign Up'
When I click on elemnt by xpath '//*[@id="regEmail"]'
When I enter `$userEmail1` in field located by xpath '//*[@id="regEmail"]'
When I click on element by xpath '/html/body/div/main/div[1]/div/div/form/fieldset[2]/button'
When I enter `$userName1` in field located by xpath '//*[@id="regUsername"]'
When I enter `$passwordUser1` in field located by xpath '//*[@id="regPassword"]'
When I click on element by xpath '/html/body/div[1]/main/div[2]/div/div/div[3]/div/form/fieldset[4]/button'
Then a field with the id '$SHORTCUT_FOCUSABLE_DIV' and text '$Reddit_will_never_share_this_information_and_uses_it_to_improve_what_content_you_see' exists

Scenario: Info flow
Given a field with the id '$SHORTCUT_FOCUSABLE_DIV' and text '$Reddit_will_never_share_this_information_and_uses_it_to_improve_what_content_you_see' exists
When I click on element with the name 'Non-Binary'
When I click on element by xpath '//*[@id="SHORTCUT_FOCUSABLE_DIV"]/div[4]/div/div/div/div[2]/button'
When I click on element with the name 'Art&Design'
When I click on element with the name 'Painting'
When I click on element with the name 'Gaming'
When I click on element by xpath '//*[@id="SHORTCUT_FOCUSABLE_DIV"]/div[4]/div/div/div/div[2]/button'
When I click on element by xpath '//*[@id="SHORTCUT_FOCUSABLE_DIV"]/div[4]/div/div/div/div[1]/div/div[1]/button'
When I click on element by xpath '//*[@id="SHORTCUT_FOCUSABLE_DIV"]/div[4]/div/div/div/div[2]/button'
When I click on element by xpath '//*[@id="SHORTCUT_FOCUSABLE_DIV"]/div[4]/div/div/div/div[2]/button'
Then I am on a page with the URL '$https://www.reddit.com/'

Scenario: Search
Given I am on a page with the URL '$https://www.reddit.com/'
When I enter 'nature' in field located `By.xpath(//*[@id="header-search-bar"])`
When I click on element by xpath `//*[@id="SearchDropdownContent"]/a[6]/span/text()[1]`
When I click on the element by xpath '//*[@id="t3_vrsghx"]/div/div/div[1]'
Then a field with the elements located by '//*[@id="subscribe-button-t5_2r5rp"]/text()', '//*[@id="overlayScrollContainer"]/div[2]/div[1]/div[2]/div[3]/div[1]/span/text()' are exists

Scenario: Message observe
Given a field with the elements located by '//*[@id="subscribe-button-t5_2r5rp"]/text()', '//*[@id="overlayScrollContainer"]/div[2]/div[1]/div[2]/div[3]/div[1]/span/text()' are exists
When I click on element by xpath '//*[@id="change-username-tooltip-id"]/span[2]/button'
When I click on elemnt by xpath '//*[@id="INBOX--TOOLTIP"]/div/div/nav/span[2]/span/a'
Then I am on a page with the URL '$https://www.reddit.com/message/messages'

