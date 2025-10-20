# CircuitJS1 - Black & White Minimalist UI Style Guide

## Design Philosophy

The CircuitJS1 UI follows a **minimal black and white design system**, inspired by modern open-source component libraries like Tailwind UI, Shadcn UI, and Radix UI. The design prioritizes clarity, simplicity, and function over decoration.

---

## Color Palette

### Grayscale System
```
Black:         #000000  (primary actions, selected states, headings)
Dark Gray:     #171717  (body text)
Medium Gray:   #525252  (secondary text)
Gray:          #737373  (tertiary text)
Light Gray:    #a3a3a3  (disabled/muted text)
Border Gray:   #e5e5e5  (borders, dividers)
Very Light:    #f5f5f5  (hover states)
Off White:     #fafafa  (subtle backgrounds)
White:         #ffffff  (main background)
```

### Usage Rules
- **No colors** except shades of gray
- Selected/active states use **solid black** (#000000)
- Disabled states use **light gray** (#a3a3a3) with reduced opacity
- All interactions maintain the monochrome aesthetic

---

## Typography

### Font Stack
```css
font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI',
             'Roboto', 'Helvetica Neue', Arial, sans-serif;
```

### Font Sizing
```
Headings:  1.75rem (28px) - weight 600
H3:        1.125rem (18px) - weight 500
Body:      14px - weight 400
Small:     13px - weight 400
Code:      13px - monospace
```

### Font Weights
- **Regular**: 400 (default)
- **Medium**: 500 (subheadings, important labels)
- **Semibold**: 600 (headings, selected states)

### Monospace
```css
font-family: 'SF Mono', 'Monaco', 'Inconsolata',
             'Roboto Mono', monospace;
```

---

## Spacing

### Base Unit: 4px

Common spacings:
```
xs:  4px
sm:  6px
md:  8px
lg:  12px
xl:  16px
2xl: 24px
3xl: 32px
4xl: 48px
```

---

## Components

### Buttons

#### Default Button
```css
padding: 6px 14px;
border: 1px solid #e5e5e5;
border-radius: 4px;
background: #ffffff;
color: #171717;
font-size: 13px;
transition: all 0.15s ease;
```

**Hover State:**
```css
background: #fafafa;
border-color: #d4d4d4;
```

**Active State:**
```css
background: #f5f5f5;
```

#### Selected Button
```css
background: #000000;
border-color: #000000;
color: #ffffff;
font-weight: 500;
```

**Selected Hover:**
```css
background: #262626;
```

### Input Fields

```css
padding: 6px 10px;
border: 1px solid #e5e5e5;
border-radius: 4px;
font-size: 13px;
background: #ffffff;
color: #171717;
transition: all 0.15s ease;
```

**Hover State:**
```css
border-color: #d4d4d4;
```

**Focus State:**
```css
border-color: #000000;
box-shadow: 0 0 0 1px #000000;
outline: none;
```

### Menus

```css
background: #ffffff;
border-bottom: 1px solid #e5e5e5;
```

**Menu Item:**
```css
padding: 6px 12px;
border-radius: 2px;
transition: background-color 0.15s ease;
```

**Menu Item Hover:**
```css
background-color: #f5f5f5;
```

### Labels

#### Selected Label
```css
border-top: 2px solid #000000;
border-bottom: 2px solid #000000;
color: #000000;
font-weight: 500;
```

---

## Borders & Radius

### Border Width
```
Default: 1px
Emphasis: 2px
```

### Border Radius
```
Small:  2px  (checkboxes, small buttons)
Medium: 4px  (buttons, inputs, cards)
```

**Philosophy**: Minimal rounding, almost sharp corners for a clean, modern look.

---

## Transitions

### Duration
```
Fast: 0.15s (most interactions)
```

### Easing
```
ease (default cubic-bezier)
```

### Common Transitions
```css
transition: all 0.15s ease;          /* most elements */
transition: background-color 0.15s ease;  /* backgrounds only */
transition: opacity 0.15s ease;       /* fading */
```

---

## Layout

### Max Width
```
Documentation pages: 900px
Centered: margin: 0 auto;
```

### Padding
```
Page: 32px
Card: 20-24px
Compact: 12-16px
```

---

## States

### Disabled
```css
opacity: 0.5;
color: #a3a3a3;
cursor: not-allowed;
```

### Hover
- Slight background change (#fafafa for white, #f5f5f5 for off-white)
- Border darkening
- No dramatic transformations

### Active/Pressed
- Slightly darker background than hover
- No translate or scale transforms (keep it subtle)

### Selected
- Solid black background
- White text
- Clear visual distinction

---

## Anti-Patterns

### ❌ Avoid
- Colors (blues, reds, greens, purples)
- Gradients
- Heavy shadows
- Large border radius (>4px)
- Animations/transforms (except opacity)
- Decorative elements

### ✅ Use
- Pure black and white contrast
- Subtle gray variations
- Minimal borders
- Small radius corners
- Instant feedback (0.15s transitions)
- Functional design

---

## Code Examples

### Button Component
```css
.button {
  padding: 6px 14px;
  border: 1px solid #e5e5e5;
  border-radius: 4px;
  background: #ffffff;
  color: #171717;
  font-size: 13px;
  font-weight: 400;
  cursor: pointer;
  transition: all 0.15s ease;
}

.button:hover {
  background: #fafafa;
  border-color: #d4d4d4;
}

.button:active {
  background: #f5f5f5;
}

.button.selected {
  background: #000000;
  border-color: #000000;
  color: #ffffff;
  font-weight: 500;
}

.button.selected:hover {
  background: #262626;
}
```

### Input Component
```css
.input {
  padding: 6px 10px;
  border: 1px solid #e5e5e5;
  border-radius: 4px;
  font-size: 13px;
  font-family: inherit;
  transition: all 0.15s ease;
  background: #ffffff;
  color: #171717;
}

.input:hover {
  border-color: #d4d4d4;
}

.input:focus {
  outline: none;
  border-color: #000000;
  box-shadow: 0 0 0 1px #000000;
}
```

---

## Documentation

For documentation pages (about, help, guides):

```css
body {
  font-size: 14px;
  line-height: 1.6;
  padding: 32px;
  max-width: 900px;
  margin: 0 auto;
}

h1 {
  font-size: 1.75rem;
  font-weight: 600;
  border-bottom: 2px solid #e5e5e5;
  padding-bottom: 12px;
  margin-bottom: 24px;
  letter-spacing: -0.02em;
}

a {
  color: #000000;
  text-decoration: underline;
  transition: opacity 0.15s ease;
}

a:hover {
  opacity: 0.7;
}

code {
  background: #fafafa;
  padding: 2px 4px;
  border-radius: 2px;
  font-family: 'SF Mono', 'Monaco', monospace;
}
```

---

## Inspiration

This design system draws inspiration from:
- **Tailwind CSS** - Neutral gray scale
- **Shadcn UI** - Minimal black/white aesthetic
- **Linear** - Clean, functional design
- **GitHub** - Clarity and readability
- **Stripe** - Professional minimalism

---

## Philosophy

> "Perfection is achieved not when there is nothing more to add, but when there is nothing left to take away."
> — Antoine de Saint-Exupéry

This UI prioritizes:
1. **Clarity** over decoration
2. **Function** over form
3. **Speed** over effects
4. **Content** over chrome

The result is a fast, accessible, and timeless interface that gets out of the user's way.
