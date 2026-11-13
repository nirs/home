/**
 * Minimal tool output.
 *
 * Collapsed tool rows show only the call (e.g. `$ npm test`, `read src/foo.ts`)
 * and hide the result. Expand a row with Ctrl+O (global toggle) or by clicking
 * the row. Errors are always shown, even when collapsed.
 *
 * This wraps the built-in renderers instead of re-registering the tools, so
 * execution, syntax highlighting, diffs, truncation, etc. stay untouched.
 */

import type { ExtensionAPI } from "@earendil-works/pi-coding-agent";
import { Text } from "@earendil-works/pi-tui";

export default function (pi: ExtensionAPI) {
	pi.registerToolRenderer((_toolName, next) => {
		const base = next();
		if (!base) return undefined;

		return {
			...base,
			renderResult(result, options, theme, context) {
				// Keep errors visible so a failure is never hidden behind a toggle.
				if (options.expanded || context.isError) {
					if (!base.renderResult) return new Text("", 0, 0);
					return base.renderResult(result, options, theme, context);
				}
				return new Text("", 0, 0);
			},
		};
	});
}
