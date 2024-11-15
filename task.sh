#!/bin/bash

# Define an array of messages
messages[0]="🐞 Fixed a sneaky bug"
messages[1]="🥶 Implemented cool feature"
messages[2]="🧹 Cleaned up codebase"
messages[3]="🧈 Merged code buttery smooth"
messages[4]="🐆 Performance optimized like cheetah"
messages[5]="🌱 Code's minty fresh"
messages[6]="📄 Updated docs as reading matters"
messages[7]="🔧 Fixed the thing, again"
messages[8]="✨ Made it work, magically"
messages[9]="🚀 Launched feature into orbit"
messages[10]="🐛 Squashed bugs, mercilessly"
messages[11]="🔍 Found and fixed edge case"
messages[12]="📊 Improved analytics pipeline"
messages[13]="🧊 Kept the system cool under load"
messages[14]="💾 Saved a lot of memory"
messages[15]="🎉 Feature shipped with confetti"
messages[16]="🔥 Boosted app performance to blazing fast"
messages[17]="🌟 Added polish to the user experience"
messages[18]="🔒 Patched a security vulnerability"
messages[19]="📬 Handled email delivery better"
messages[20]="💡 Refactored code to be more readable"
messages[21]="📦 Improved deployment scripts"
messages[22]="🚦 Added better error handling"
messages[23]="🐳 Dockerized everything"
messages[24]="🔗 Fixed broken links"
messages[25]="🪛 Tightened up configurations"
messages[26]="⏱️ Reduced load time significantly"
messages[27]="📂 Organized project folders"
messages[28]="🖼️ Optimized images for faster load"
messages[29]="🎛️ Tuned database queries"
messages[30]="🌐 Improved localization support"
messages[31]="📅 Fixed timezone-related bugs"
messages[32]="📥 Improved file upload functionality"
messages[33]="📤 Enhanced file export options"
messages[34]="🖱️ Fixed mouse click interactions"
messages[35]="🎨 Improved visual design elements"
messages[36]="🛠️ Made admin tools more powerful"
messages[37]="🌪️ Reduced crash rate to near-zero"
messages[38]="🎯 Added better autocomplete"
messages[39]="🏎️ Accelerated API response times"
messages[40]="🛡️ Enhanced security measures"
messages[41]="🧩 Fixed module compatibility issues"
messages[42]="🎵 Improved audio playback stability"
messages[43]="🗺️ Added detailed navigation options"
messages[44]="🧭 Fixed breadcrumb navigation"
messages[45]="🔮 Predicted and fixed future bugs"
messages[46]="🌈 Improved color accessibility"
messages[47]="📱 Enhanced mobile responsiveness"
messages[48]="🔗 Strengthened API integrations"
messages[49]="📥 Improved caching for faster loads"
messages[50]="📖 Enhanced content readability"
messages[51]="📋 Improved clipboard support"
messages[52]="🗂️ Added better file organization"
messages[53]="🚚 Optimized data transfer"
messages[54]="🛠️ Improved maintenance tools"
messages[55]="🔄 Improved retry mechanisms"
messages[56]="🖇️ Refactored repetitive code"
messages[57]="🎥 Enhanced video playback quality"
messages[58]="🔔 Improved notification system"
messages[59]="🎚️ Fine-tuned system settings"
messages[60]="⚡ Minimized power consumption"
messages[61]="📛 Improved error messages"
messages[62]="📜 Updated terms and conditions"
messages[63]="💬 Enhanced chat features"
messages[64]="📍 Improved geolocation accuracy"
messages[65]="🌊 Made UI transitions smoother"
messages[66]="🔗 Resolved broken dependencies"
messages[67]="🗑️ Cleaned up unused assets"
messages[68]="🎛️ Improved toggle controls"
messages[69]="🕵️ Enhanced search functionality"
messages[70]="🎚️ Refined volume controls"
messages[71]="🎛️ Improved dashboard widgets"
messages[72]="📊 Added interactive charts"
messages[73]="📥 Simplified login process"
messages[74]="🔑 Improved password recovery"
messages[75]="🖌️ Enhanced button animations"
messages[76]="📐 Added pixel-perfect alignment"
messages[77]="📏 Improved grid layouts"
messages[78]="📦 Reduced package size"
messages[79]="🔄 Improved sync mechanisms"
messages[80]="💾 Optimized database storage"
messages[81]="🔗 Improved social sharing"
messages[82]="🔄 Updated background jobs"
messages[83]="🛠️ Added advanced developer tools"
messages[84]="📦 Enhanced bundle management"
messages[85]="⚙️ Automated testing pipelines"
messages[86]="🖥️ Improved desktop app performance"
messages[87]="📲 Enhanced push notification delivery"
messages[88]="💡 Made onboarding easier"
messages[89]="🧹 Removed unused code paths"
messages[90]="📂 Added dynamic folder management"
messages[91]="📡 Improved network resiliency"
messages[92]="📽️ Optimized video streaming"
messages[93]="🎭 Improved avatar customization"
messages[94]="📊 Refactored analytics dashboard"
messages[95]="📎 Improved drag-and-drop support"
messages[96]="📍 Enhanced map markers"
messages[97]="🔗 Fixed deep-linking issues"
messages[98]="💾 Improved data export quality"
messages[99]="🔧 Built a handy new utility"

generate_random_date() {
    current_date=$(date +%Y-%m-%d)
    date_three_months_ago=$(date -d "-4 months" +%Y-%m-%d)

    random_timestamp=$(shuf -i "$(date -d "$date_three_months_ago" +%s)-$(date -d "$current_date" +%s)" -n 1)

    date -d "@$random_timestamp" '+%Y-%m-%d %H:%M:%S'
}

# Generate a random loop count between 500 and 1000
loop_count=$((RANDOM % 501 + 500))  # 501 is the range (1000 - 500 + 1), then add 500 to shift the range to [500, 1000]

echo "Randomly selected loop count: $loop_count"

# Loop the randomly chosen number of times
for ((i=1; i<=loop_count; i++)); do
    # Generate a random date within the last 3 months
    random_date=$(generate_random_date)

    # Generate a random number to select a message from the array
    randomNum=$(($RANDOM % ${#messages[@]}))

    # Get the current date and time for the update.md file
    currentTimestamp=$(date '+%B %d, %Y at %I:%M %p')

    # Check if update.md exists, and create it if it doesn't
    if [ ! -e "update.md" ]; then
        touch update.md
        git add update.md
    fi

    # Append text to update.md, indicating the last update time
    echo "## 🤔 LAST UPDATED ON: ${currentTimestamp} (Loop $i)" >update.md

    # Configure local Git user information
    git config --local user.email "jliebert477@gmail.com"
    git config --local user.name "jliebert477"

    # Commit changes to the repository with a random message and the random date
    GIT_AUTHOR_DATE="$random_date" \
    GIT_COMMITTER_DATE="$random_date" \
    git commit -am "${messages[$randomNum]} on ${random_date}"

    # Optional: Print progress
    echo "Commit $i made with date: $random_date"
done
