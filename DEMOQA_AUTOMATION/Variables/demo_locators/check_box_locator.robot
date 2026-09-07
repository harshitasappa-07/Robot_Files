*** Variables ***
${CHECK_BOX_BUTTON_TOGGLE_HOME}          xpath=//span[@title='Home']/preceding-sibling::span[contains(@class, 'rc-tree-switcher')]
${CHECK_BOX_BUTTON_EXPAND_ALL}           xpath=//button[@title='Expand all']
${CHECK_BOX_BUTTON_COLLAPSE_ALL}         xpath=//button[@title='Collapse all']
${CHECK_BOX_CHECKBOX_HOME}               xpath=//span[@role='checkbox' and contains(@class, 'rc-tree-checkbox')]
${CHECK_BOX_CHECKBOX_DESKTOP}            xpath=//label[@for='tree-node-desktop']//span[contains(@class, 'rct-checkbox')]
${CHECK_BOX_TEXT_RESULT}                 xpath=//div[@id='result']