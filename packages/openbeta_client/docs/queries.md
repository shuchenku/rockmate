# OpenBeta GraphQL API Documentation

## API Information
- **Endpoint**: `https://api.openbeta.io/graphql`
- **Authentication**: None required (public API)
- **Rate Limits**: None observed (needs monitoring in production)

---

## Key Queries

### 1. Search Areas by Name

```graphql
query SearchAreas($areaName: String!) {
  areas(filter: { area_name: { match: $areaName } }) {
    uuid
    area_name
    totalClimbs
    climbs {
      uuid
      name
      fa
      length
      boltsCount
      grades {
        yds
      }
      type {
        sport
        trad
        bouldering
        tr
      }
      content {
        description
        protection
      }
    }
  }
}
```

**Variables**:
```json
{
  "areaName": "Bishop"
}
```

### 2. Get Single Climb by UUID

```graphql
query GetClimb($uuid: ID!) {
  climb(uuid: $uuid) {
    uuid
    name
    fa
    length
    boltsCount
    grades {
      yds
    }
    type {
      sport
      trad
      bouldering
      tr
    }
    content {
      description
      protection
    }
    pathTokens
    parent {
      area_name
    }
  }
}
```

**Variables**:
```json
{
  "uuid": "0210ca92-e615-5f85-9f0b-72ff16708df7"
}
```

### 3. Get Single Area by UUID

```graphql
query GetArea($uuid: ID!) {
  area(uuid: $uuid) {
    uuid
    area_name
    totalClimbs
    metadata {
      lat
      lng
    }
    climbs {
      uuid
      name
      grades {
        yds
      }
      type {
        sport
        trad
        bouldering
      }
    }
  }
}
```

---

## Schema

### Climb Type Fields

| Field | Type | Nullable | Description |
|-------|------|----------|-------------|
| `uuid` | ID | No | Unique identifier |
| `name` | String | No | Climb name |
| `fa` | String | Yes | First ascent info |
| `length` | Int | No | Length in meters (-1 if unknown) |
| `boltsCount` | Int | Yes | Number of bolts (-1 if unknown) |
| `grades` | GradeType | Yes | Grade information |
| `gradeContext` | String | Yes | Geographic context (e.g., US, AU) |
| `type` | ClimbType | No | Boolean flags for sport/trad/bouldering/tr |
| `content` | Content | No | Description and protection info |
| `pathTokens` | [String] | Yes | Hierarchical area names |
| `parent` | Area | No | Parent area object |

### GradeType Object

| Field | Type | Description |
|-------|------|-------------|
| `yds` | String | Yosemite Decimal System (5.10a, 5.12c, etc.) |

### ClimbType Object

| Field | Type | Description |
|-------|------|-------------|
| `sport` | Boolean | True if sport climb |
| `trad` | Boolean | True if trad climb |
| `bouldering` | Boolean | True if boulder problem |
| `tr` | Boolean | True if commonly top-roped |

### Content Object

| Field | Type | Description |
|-------|------|-------------|
| `description` | String | Route description/beta |
| `protection` | String | Protection notes |

### Area Type Fields

| Field | Type | Description |
|-------|------|-------------|
| `uuid` | ID | Unique identifier |
| `area_name` | String | Area name |
| `totalClimbs` | Int | Total number of climbs in area (including children) |
| `climbs` | [Climb] | Array of climbs directly in this area |
| `metadata` | AreaMetadata | Geolocation and other metadata |

---

## Sample Responses

### Area Search Response (simplified)

```json
{
  "data": {
    "areas": [
      {
        "uuid": "f7b950cc-9390-595e-842e-62f1594eeb7f",
        "area_name": "5 - Bishop",
        "totalClimbs": 7,
        "climbs": [
          {
            "uuid": "0210ca92-e615-5f85-9f0b-72ff16708df7",
            "name": "Cornickopia",
            "fa": "Doug Cornick, EFR, Jim Scott, Erica Bigio - 2008",
            "length": -1,
            "boltsCount": -1,
            "grades": {"yds": "5.10"},
            "type": {"sport": true, "trad": null, "bouldering": null, "tr": null},
            "content": {"description": "", "protection": ""}
          }
        ]
      }
    ]
  }
}
```

---

## Notes

- Many fields return `-1` when data is unknown (length, boltsCount)
- Empty strings for `description` and `protection` are common
- `type` object contain boolean flags; multiple can be true (e.g., sport + trad)
- `pathTokens` provides breadcrumb trail from root area to climb
- Areas can contain nested areas (hierarchical structure)
