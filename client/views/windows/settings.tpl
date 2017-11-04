<div class="header">
	<button class="lt" aria-label="Toggle channel list"></button>
</div>
<div class="container">
	<h1 class="title">Settings</h1>

	<div class="row">
		<div class="col-sm-12">
			<h2>Messages</h2>
		</div>
		<div class="col-sm-6">
			<label class="opt">
				<input type="checkbox" name="motd">
				Show <abbr title="Message Of The Day">MOTD</abbr>
			</label>
		</div>
		<div class="col-sm-6">
			<label class="opt">
				<input type="checkbox" name="showSeconds">
				Show seconds in timestamp
			</label>
		</div>
		<div class="col-sm-12">
			<h2>
				Status messages
				<span class="tooltipped tooltipped-n tooltipped-no-delay" aria-label="Joins, parts, kicks, nick changes, away changes, and mode changes">
					<button class="extra-help" aria-label="Joins, parts, kicks, nick changes, away changes, and mode changes"></button>
				</span>
			</h2>
		</div>
		<div class="col-sm-12">
			<label class="opt">
				<input type="radio" name="statusMessages" value="shown">
				Show all status messages individually
			</label>
			<label class="opt">
				<input type="radio" name="statusMessages" value="condensed">
				Condense status messages together
			</label>
			<label class="opt">
				<input type="radio" name="statusMessages" value="hidden">
				Hide all status messages
			</label>
		</div>
		<div class="col-sm-12">
			<h2>Visual Aids</h2>
		</div>
		<div class="col-sm-12">
			<label class="opt">
				<input type="checkbox" name="coloredNicks">
				Enable colored nicknames
			</label>
			<label class="opt">
				<input type="checkbox" name="autocomplete">
				Enable autocomplete
			</label>
		</div>
		<div class="col-sm-12">
			<h2>Theme</h2>
		</div>
		<div class="col-sm-12">
			<label for="theme-select" class="sr-only">Theme</label>
			<select id="theme-select" name="theme" class="input">
				{{#each themes}}
					<option value="{{name}}">
						{{displayName}}
					</option>
				{{/each}}
			</select>
		</div>
		{{#if prefetch}}
		<div class="col-sm-12">
			<h2>Link previews</h2>
		</div>
		<div class="col-sm-6">
			<label class="opt">
				<input type="checkbox" name="thumbnails">
				Auto-expand images
			</label>
		</div>
		<div class="col-sm-6">
			<label class="opt">
				<input type="checkbox" name="links">
				Auto-expand websites
			</label>
		</div>
		{{/if}}
		{{#unless public}}
		<div class="col-sm-12">
			<h2>Push Notifications</h2>
		</div>
		<div class="col-sm-12">
			<button type="button" class="btn" id="pushNotifications" disabled data-text-alternate="Unsubscribe from push notifications">Subscribe to push notifications</button>
			<div class="error" id="pushNotificationsHttps">
				<strong>Warning</strong>:
				Push notifications are only supported over HTTPS connections.
			</div>
			<div class="error" id="pushNotificationsUnsupported">
				<strong>Warning</strong>:
				<span>Push notifications are not supported by your browser.</span>
			</div>
		</div>
		{{/unless}}
		<div class="col-sm-12">
			<h2>Browser Notifications</h2>
		</div>
		<div class="col-sm-12">
			<label class="opt">
			<input id="desktopNotifications" type="checkbox" name="desktopNotifications">
			Enable browser notifications<br>
			<div class="error" id="warnUnsupportedDesktopNotifications">
				<strong>Warning</strong>:
				Notifications are not supported by your browser.
			</div>
			<div class="error" id="warnBlockedDesktopNotifications">
				<strong>Warning</strong>:
				Notifications are blocked by your browser.
			</div>
			</label>
		</div>
		<div class="col-sm-12">
			<label class="opt">
			<input type="checkbox" name="notification">
			Enable notification sound
			</label>
		</div>
		<div class="col-sm-12">
			<div class="opt">
				<button id="play">Play sound</button>
			</div>
		</div>

		<div class="col-sm-12">
			<label class="opt">
				<input type="checkbox" name="notifyAllMessages">
				Enable notification for all messages
			</label>
		</div>

		<div class="col-sm-12">
			<label class="opt">
				<label for="highlights" class="sr-only">Custom highlights (comma-separated keywords)</label>
				<input type="text" id="highlights" name="highlights" class="input" placeholder="Custom highlights (comma-separated keywords)">
			</label>
		</div>

		{{#unless public}}
			{{#unless ldap.enable}}
		<div id="change-password">
			<form action="" method="post">
				<div class="col-sm-12">
					<h2>Change password</h2>
				</div>
				<div class="col-sm-12">
					<label for="old_password_input" class="sr-only">Enter current password</label>
					<input type="password" id="old_password_input" name="old_password" class="input" placeholder="Enter current password">
				</div>
				<div class="col-sm-12">
					<label for="new_password_input" class="sr-only">Enter desired new password</label>
					<input type="password" id="new_password_input" name="new_password" class="input" placeholder="Enter desired new password">
				</div>
				<div class="col-sm-12">
					<label for="verify_password_input" class="sr-only">Repeat new password</label>
					<input type="password" id="verify_password_input" name="verify_password" class="input" placeholder="Repeat new password">
				</div>
				<div class="col-sm-12 feedback"></div>
				<div class="col-sm-12">
					<button type="submit" class="btn">Change password</button>
				</div>
			</form>
		</div>
			{{/unless}}
		{{/unless}}
		<div class="col-sm-12">
			<h2>Custom Stylesheet</h2>
		</div>
		<div class="col-sm-12">
			<textarea class="input" name="userStyles" id="user-specified-css-input" placeholder="/* You can override any style with CSS here */"></textarea>
		</div>
	</div>

	{{#unless public}}
		<div class="session-list">
			<h2>Sessions</h2>

			<h3>Current session</h3>
			<div id="session-current"></div>

			<h3>Other sessions</h3>
			<div id="session-list"></div>
		</div>
	{{/unless}}
</div>
