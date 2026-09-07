*** Variables ***
${NESTED_FRAMES_IFRAME_PARENT}           xpath=//iframe[@id='frame1']
${NESTED_FRAMES_IFRAME_CHILD}            xpath=//iframe[contains(@srcdoc, 'Child Iframe')]
${NESTED_FRAMES_TEXT_BODY}               xpath=//body