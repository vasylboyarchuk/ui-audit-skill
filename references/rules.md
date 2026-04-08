# UI Audit Rules

Rules synthesized from *Refactoring UI* (Adam Wathan & Steve Schoger)
and *Practical UI* (Adham Dannaway).

Categories are ordered from big-picture to detail — the same order
a designer should think when reviewing a screen:

1. Perception & Gestalt — how the eye reads the layout
2. Hierarchy — what matters most
3. Layout & Spacing — structure and breathing room
4. Typography — readability and scale
5. Color — palette, contrast, meaning
6. Depth & Shadows — elevation and separation
7. Components & Patterns — specific UI elements
8. Accessibility — inclusive design baselines
9. Finishing Touches — polish and personality

---

## 1. PERCEPTION & GESTALT

These are the lowest-level rules — they govern how the human eye groups
and interprets elements before conscious thought kicks in. Violations here
make a design feel confusing regardless of how good it looks otherwise.

**G1 — Common region is the strongest grouping cue**
Elements inside a shared container (border, background, shadow) are
perceived as a group. Use this deliberately.
- Violation: Related fields or actions in open space with no container — grouping is ambiguous
- Fix: Wrap related elements in a card, panel, or tinted background region

**G2 — Proximity communicates relationship**
Elements close together are perceived as related. Spacing is a grouping
tool, not just decoration.
- Violation: A button equidistant from two content blocks — unclear which it belongs to
- Fix: Move the button closer to what it acts on; increase distance from unrelated elements

**G3 — Visual similarity implies same type**
Elements sharing color, shape, or size are seen as belonging to the same
category. Interactive and non-interactive elements must look different.
- Violation: Action icons look identical to status icons — user can't tell which are clickable
- Fix: Give interactive elements a consistent visual treatment distinct from decorative ones

**G4 — Figure/ground separation makes affordances clear**
Interactive elements must visually lift off the background. If a button
looks like the page, it won't be perceived as clickable.
- Violation: Ghost button on a light grey background — nearly invisible
- Fix: Add enough contrast, fill, or shadow to make interactive elements clearly "on top"

**G5 — Alignment creates visual flow**
The eye follows lines and edges. Consistent alignment axes guide the
reader through the layout naturally.
- Violation: Mixed left/center/right alignment across sections — the eye has no clear path
- Fix: Pick one primary alignment axis per section; deviate only deliberately

---

## 2. HIERARCHY

Hierarchy is the most important design decision on any screen. If
the user can't instantly tell what matters most, the design has failed.

**H1 — Every screen needs one dominant element**
Something must be clearly most important. When everything competes
equally, nothing stands out.
- Violation: Every element has similar size, weight, and color — no clear entry point
- Fix: Make one element dominant; de-emphasize everything else around it

**H2 — De-emphasize to emphasize**
If the primary element isn't standing out, don't pile more styling onto
it — reduce the weight of competing elements instead.
- Violation: Active nav item is colored but still lost among equally-weighted inactive items
- Fix: Make inactive items lighter/more muted so the active item naturally pops

**H3 — Use weight and color for hierarchy, not just size**
Size is a blunt tool. Bold text and muted color create clearer hierarchy
with less visual disruption.
- Violation: Primary content 24px regular, secondary 11px — both in the same dark color
- Fix: Primary bold at a reasonable size; secondary same/smaller size but lighter grey

**H4 — Limit to 2-3 text colors**
More than three text colors creates visual noise and unclear hierarchy.
- Dark (near-black) for primary content
- Medium grey for secondary content
- Light grey for tertiary/metadata
- Violation: Many subtly different near-black shades used inconsistently, or brand/accent color used for body text
- Fix: Consolidate to a strict 3-color text system drawn from the design's existing palette

**H5 — Limit to 2 font weights**
Use 400-500 for body, 600-700 for emphasis. Nothing below 400 in UI.
- Violation: Font weight 300 or 200 anywhere in the interface
- Fix: Replace thin weights with a lighter text color from the existing palette — never achieve de-emphasis through thinner strokes

**H6 — One primary action per screen**
Primary actions: solid high-contrast fill. Secondary: outline or
low-contrast. Tertiary: link-style only.
- Violation: Two solid high-contrast buttons side by side
- Fix: Demote the secondary to outline; demote tertiary to plain link

**H7 — Destructive actions match their hierarchy level**
Dangerous ≠ visually primary. A destructive action that isn't the main
action on the page shouldn't be styled as big, red, and bold.
- Violation: "Delete account" gets the same treatment as "Save changes"
- Fix: Style destructive actions as secondary/tertiary; make them primary only at the confirmation step

**H8 — Section titles are labels, not headings**
Section titles support the content below them — they shouldn't compete
with it. Style them small and muted.
- Violation: Large bold section titles stealing attention from the content they introduce
- Fix: Style section titles small, muted, and spaced tightly above their content

**H9 — Labels are a last resort**
"Label: Value" format gives every piece of data equal weight. When
format or context makes a label redundant, remove it.
- Violation: Data values preceded by labels that the format or context already makes obvious (a clearly formatted email address labeled "Email:", a number labeled "Count:", a date labeled "Date:")
- Fix: Remove redundant labels; rewrite as natural language where possible ("3 bedrooms", "12 left in stock")

**H10 — Visual weight balance**
Heavy visual elements (dark fills, large images, dense text) need
counterweights. Unbalanced layouts feel unstable.
- Violation: All visual weight on the left of a two-column layout; right side feels empty
- Fix: Distribute visual weight using size, color density, or contrast on the lighter side

---

## 3. LAYOUT & SPACING

**S1 — More space between groups than within them**
The gap between related elements must be visibly smaller than the gap
between unrelated groups. Ambiguous spacing forces the user to work harder.
- Violation: Form label-to-input gap equals the gap between field groups
- Fix: Make inter-group spacing at least 2× the intra-group spacing

**S2 — Use a spacing scale**
All spacing should come from a defined scale (4, 8, 12, 16, 24, 32, 48,
64px). Arbitrary values create inconsistency.
- Violation: Padding values of 13px, 17px, 22px throughout the design
- Fix: Normalize every spacing value to the nearest scale step

**S3 — Default to generous whitespace**
Crowded interfaces feel worse than airy ones. Start with too much space
and reduce — not the other way around.
- Violation: Content packed edge-to-edge with minimal padding inside cards or sections
- Fix: Increase internal padding generously; reduce only if the design feels too sparse

**S4 — Elements should be as wide as their content needs**
Don't stretch elements to fill the container just because the space is
available. Unnecessary width hurts readability and usability.
- Violation: Narrow-purpose elements (login forms, search inputs, confirmation dialogs) stretched to fill a wide container
- Fix: Set a max-width appropriate to the content; let the element sit centered or anchored within the larger space

**S5 — Use fixed widths for fixed-content elements**
Sidebars, navigation, and constrained-content areas should have fixed
widths, not fluid percentages that scale awkwardly with the viewport.
- Violation: A sidebar or nav panel defined as a percentage — becomes too wide on large screens and too narrow on small ones
- Fix: Give it a fixed width optimized for its content; let the main content area fill the rest

**S6 — Scale padding independently of font size**
Larger components don't just need proportionally more padding — they
often need disproportionately more. Smaller ones can be tighter.
- Violation: Small/medium/large buttons where padding scales exactly with font size
- Fix: Give larger buttons more generous padding ratio; tighten small button padding

---

## 4. TYPOGRAPHY

**T1 — Use a defined type scale**
Arbitrary font sizes create inconsistency and slow down decisions. Use
a non-linear scale with ~25% jumps between values.
- Violation: Seven different sizes in the 12-18px range, all subtly different
- Fix: Collapse to a scale like 12, 14, 16, 20, 24, 32, 48px and use only those

**T2 — Line length 45-75 characters**
At 16px, ~600-700px is the sweet spot. Longer lines make it hard for
the eye to find the next line.
- Violation: Full-width paragraph text in a 1200px container
- Fix: Constrain paragraph max-width to ~65ch or ~680px

**T3 — Line-height inversely proportional to font size**
Large text needs less line-height; small or wide text needs more.
- Headlines (32px+): line-height ~1.1-1.2
- Body text: ~1.5-1.6
- Small or wide text: up to 1.8
- Violation: 48px headline at line-height 1.6, or 13px dense text at line-height 1.2
- Fix: Reduce line-height on display text; increase on small or wide body text

**T4 — Don't center long text**
Center alignment works for headlines or 1-2 line standalone blocks.
Longer text must be left-aligned.
- Violation: 4+ line paragraph centered on the page
- Fix: Left-align anything beyond 2-3 lines

**T5 — Right-align numeric table columns**
Decimal alignment makes numbers scannable at a glance. Left-aligned
numbers in columns are hard to compare.
- Violation: Left-aligned prices or quantities in a data table
- Fix: Right-align all numeric columns

**T6 — Add letter-spacing to all-caps text**
All-caps has less visual variety than mixed-case, making it harder to
read at default spacing.
- Violation: All-caps labels or badges with no letter-spacing
- Fix: Add 0.05-0.1em letter-spacing to all-caps text

**T7 — Baseline-align mixed font sizes**
When combining different font sizes on the same line, align them at
their baseline — not their vertical center.
- Violation: Large stat number next to small label, vertically centered — looks awkward
- Fix: Align by baseline; the result feels more natural and intentional

---

## 5. COLOR

**C1 — No grey text on colored backgrounds**
Grey on a colored background looks dull and disabled. The goal is
reduced contrast — achieve it by matching the hue, not going grey.
- Violation: #999999 text on a blue #3B82F6 background
- Fix: Use a lighter version of the background hue for text (e.g. hsl(217, 70%, 85%))

**C2 — Build 8-10 shades per color**
Too few shades forces compromises across backgrounds, borders, text,
and hover states.
- Violation: A single value of the primary or accent color used interchangeably for buttons, tinted backgrounds, active states, and borders — no range to draw from
- Fix: Define a 50-900 scale for each color; pick consistently from it rather than reusing one value everywhere

**C3 — Boost saturation on light and dark shades**
Shades far from 50% lightness lose vibrancy naturally. Compensate by
increasing saturation to maintain color presence.
- Violation: Light tint of brand color looks completely washed out
- Fix: Increase HSL saturation when lightness moves away from 50%

**C4 — Keep grey temperature consistent**
Greys should be uniformly warm (yellow/orange tint) or cool (blue tint)
throughout. Mixed temperatures feel incoherent.
- Violation: Some greys are slightly blue, others slightly warm — feels unintentional
- Fix: Add ~5-10% saturation in one direction to all grey values

**C5 — Never use color as the only way to communicate meaning**
A significant portion of users have some form of color vision deficiency.
Color must always be paired with another signal.
- Violation: Any state, status, category, or value that is communicated purely through color difference — success vs error, active vs inactive, positive vs negative — with no supporting icon, label, pattern, or shape change
- Fix: Add a secondary signal alongside every color-coded meaning: an icon, a text label, a shape change, or a pattern

---

## 6. DEPTH & SHADOWS

**D1 — Shadow size must match elevation purpose**
Small blur = slightly raised. Medium = dropdown. Large = modal.
Using the same shadow everywhere destroys the z-axis signal.
- Violation: Cards and modals both use the same large dramatic shadow
- Fix: Cards: 2-4px blur. Dropdowns: ~8px. Modals: 16-32px

**D2 — Define a fixed 5-step shadow scale**
Ad-hoc shadows throughout a file create inconsistency and visual noise.
- Violation: Eight completely different box-shadow values across the file
- Fix: Define 5 levels from barely-visible to full modal elevation; use only those

**D3 — Prefer box-shadow over border for element separation**
Shadows are less visually aggressive than borders for containing
elements — the result feels more polished and less rigid.
- Violation: Cards, panels, or containers separated from the background using solid borders when they share a similar background color
- Fix: Replace decorative borders with a subtle box-shadow; reserve borders for elements that need a strong, explicit boundary

**D4 — Inset elements need inset shadows**
Text inputs, textareas, and wells should feel recessed. A subtle top
inner shadow signals that light is being blocked from above.
- Violation: Input fields and text areas are completely flat — a plain rectangle with only a border and no depth cue
- Fix: Add a light inset shadow at the top of inputs and wells to suggest they are recessed into the surface

---

## 7. COMPONENTS & PATTERNS

**P1 — Inline validation, not top-of-form error summaries**
Showing errors only at the top of a form after submission forces the
user to hunt for which field is wrong.
- Violation: "3 errors found" at the top with no indicators on the fields themselves
- Fix: Show error messages directly below the relevant field; summary is optional for long forms

**P2 — Disabled states look like the component, just muted**
Disabled elements must still be recognizable as what they are.
- Violation: Disabled button has completely different shape or is invisible
- Fix: Same structure and shape; reduce opacity or desaturate; never remove the affordance

**P3 — Use skeleton screens for content-heavy loading**
Spinners create jarring pop-in for layout-heavy content. Skeleton
screens set spatial expectations and feel faster.
- Violation: A content-heavy screen (data tables, card grids, feeds, dashboards) shows only a spinner with no layout preview, then fully appears all at once
- Fix: Render grey placeholder shapes matching the content layout while loading; reserve spinners for small inline loading states

**P4 — Consistent alignment inside components**
Elements within a card, list item, or modal should align to one axis.
Mixing alignments inside a single component looks unpolished.
- Violation: Card with left-aligned title, centered body text, right-aligned button
- Fix: Pick one alignment for the component and apply it to all child elements

**P5 — Use selectable cards for important choices**
When a choice is a core part of the UI flow, plain radio buttons
undersell its importance and limit the information visible per option.
- Violation: A significant user choice (plan selection, mode selection, category assignment, onboarding path) presented as a plain stacked list of radio buttons with no supporting context visible
- Fix: Selectable card components that surface the key details of each option; the radio button becomes a visual detail inside the card rather than the entire UI

**P6 — Empty states need illustration and a clear CTA**
The empty state is often a user's first experience with a feature.
Plain "No items found" text is a missed opportunity.
- Violation: Empty list or table with only a plain text message
- Fix: Add an icon or illustration, a short headline, and a primary action button

**P7 — Don't upscale small icons**
Icons drawn at 16-24px look chunky and unprofessional at 3-4× their
intended size — they lack detail and feel disproportionate.
- Violation: 16px SVG icon inflated to 64px for a features section
- Fix: Wrap the icon in a larger background shape; keep the icon at its intended size inside

**P8 — Fixed containers for variable-size images**
User-uploaded images at their intrinsic dimensions break layout
consistency.
- Violation: User avatars or uploaded photos at intrinsic size causing layout shift
- Fix: Crop into a fixed container using object-fit: cover

**P9 — Prevent image background bleed**
When an image's background color is similar to the page background,
the image loses its shape and visual boundary.
- Violation: An image whose background color closely matches the surrounding page background — the edges become invisible and the image appears to dissolve into the page
- Fix: Use a subtle inner shadow on the image container to create a soft boundary; avoid hard borders which clash with image colors

**P10 — Text over images needs a contrast treatment**
Background photos with mixed light/dark areas make overlaid text
unreliable regardless of text color.
- Violation: White text on a hero image — disappears in light photo areas
- Fix: Dark semi-transparent overlay, lowered image contrast, or a colorized tint

---

## 8. ACCESSIBILITY

**A1 — Meet minimum contrast ratios**
WCAG AA: normal text (under 18px regular / 14px bold) needs 4.5:1.
Large text needs 3:1.
- Violation: Light grey placeholder or secondary text on white background
- Fix: Darken text until contrast ratio is met; verify with a contrast checker

**A2 — Focus states must be visible and distinct**
Every interactive element needs a visible focus indicator for keyboard
navigation. Color change alone is not sufficient.
- Violation: Focused button looks identical to its default state
- Fix: Add a visible 2px offset outline or ring in the brand color on :focus-visible

**A3 — Touch targets minimum 44×44px**
Small tap targets cause errors on mobile, especially for users with
motor impairments.
- Violation: Interactive elements (icon buttons, checkboxes, toggles, small links) whose tappable area is clearly smaller than a comfortable finger tap
- Fix: Pad the interactive area to at least 44×44px even if the visible element is smaller; the padding can be invisible

**A4 — Never use placeholder as the only label**
Placeholder text disappears when the user starts typing, leaving them
without context. It is not a label substitute.
- Violation: Form fields with only placeholder text and no persistent label
- Fix: Always include a visible label above or beside the field; placeholder can supplement it

**A5 — Don't rely solely on position to communicate meaning**
Meaning that depends only on spatial position (left = negative, right =
positive) breaks for screen readers and different reading patterns.
- Violation: Comparison table where left/right column position is the only positive/negative indicator
- Fix: Add explicit labels, icons, or color alongside positional meaning

---

## 9. FINISHING TOUCHES

**F1 — Accent borders add personality to flat sections**
A single colored border (top of card, left of alert, under headline)
adds visual character with minimal effort.
- Violation: Functional but visually flat alert messages or cards with no personality
- Fix: Add a 3-4px colored top or left border in the brand or semantic color

**F2 — Decorate backgrounds deliberately**
Flat single-color backgrounds can feel plain. A subtle gradient, tinted
panel, or low-contrast pattern adds interest without distraction.
- Violation: Long page sections that are identical flat white — no visual rhythm
- Fix: Alternate background tints between sections, or add a subtle brand-color gradient

**F3 — Use fewer borders**
Over-bordering makes interfaces feel rigid and cluttered. Borders should
be a last resort for separation, not the default.
- Violation: Every section, row, and card outlined with 1px solid borders
- Fix: Replace with background color differentiation, increased spacing, or box-shadow

**F4 — Elevate default form controls**
Browser-default checkboxes, radio buttons, and selects look out of place
in a polished UI.
- Violation: Default OS-style checkboxes in an otherwise well-designed form
- Fix: Custom controls in brand color; consistent styling across all form elements
