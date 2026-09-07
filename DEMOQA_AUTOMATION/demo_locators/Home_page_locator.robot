*** Variables ***
${HOME_CARD_ELEMENTS}                  xpath=//div[contains(@class, 'card-body')]//h5[normalize-space()='Elements']/ancestor::div[contains(@class, 'card')]
${HOME_CARD_FORMS}                     xpath=//div[contains(@class, 'card-body')]//h5[normalize-space()='Forms']/ancestor::div[contains(@class, 'card')]
${HOME_CARD_ALERTS_FRAME_WINDOWS}      xpath=//div[contains(@class, 'card-body')]//h5[normalize-space()='Alerts, Frame & Windows']/ancestor::div[contains(@class, 'card')]
${HOME_CARD_WIDGETS}                   xpath=//div[contains(@class, 'card-body')]//h5[normalize-space()='Widgets']/ancestor::div[contains(@class, 'card')]
${HOME_CARD_INTERACTIONS}              xpath=//div[contains(@class, 'card-body')]//h5[normalize-space()='Interactions']/ancestor::div[contains(@class, 'card')]

${SIDEBAR_MENU_TEXT_BOX}               xpath=//li[contains(@class, 'btn')]//span[normalize-space()='Text Box']
${SIDEBAR_MENU_PRACTICE_FORM}          xpath=//li[contains(@class, 'btn')]//span[normalize-space()='Practice Form']
${SIDEBAR_MENU_ALERTS}                 xpath=//li[contains(@class, 'btn')]//span[normalize-space()='Alerts']
${SIDEBAR_MENU_ACCORDIAN}              xpath=//li[contains(@class, 'btn')]//span[normalize-space()='Accordian']
${SIDEBAR_MENU_SELECTABLE}             xpath=//li[contains(@class, 'btn')]//span[normalize-space()='Selectable']