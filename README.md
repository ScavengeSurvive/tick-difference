# tick-difference

`GetTickCountDifference` returns the difference between two values from `GetTickCount` and takes into account overflow.

## Usage

Simply add to your `pawn.json` and include:

```json
{
    "dependencies": ["ScavengeSurvive/tick-difference"]
}
```

```pawn
#include <tick-difference>
```

## Testing

To test, simply run the package:

```bash
sampctl package run
```

Then connect to `localhost:7777`.
