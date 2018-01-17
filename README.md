# API

## Videos
| Verb | URL | Controller#Action |
|------|-----|-------------------|
|GET   |/videos|videos#index   |
|GET   |/videos/:id   |videos#show   |

#### GET/videos Response:
```
{
  "videos": [
    {
      "id": 1,
      "title": "Pedals and Cranks",
      "url": "https://www.youtube.com/embed/vHc4dTbo9r0",
      "tags": [
        8
      ],
      "ratings": [
        2,
        17
      ]
    },
    {
    "id": 2,
    "title": "Front Derailleur",
    "url": "https://www.youtube.com/embed/rt-DkIuwMf8",
    "tags": [
      8,
      9
    ],
    "ratings": [
      3,
      18
    ]
    }
  ]
}
```
#### GET/videos/:id Response:
```
{
  "id": 1,
  "title": "Pedals and Cranks",
  "url": "https://www.youtube.com/embed/vHc4dTbo9r0",
  "tags": [
    8
  ],
  "ratings": [
    2,
    17
  ]
}
```

## Userratings
| Verb | URL | Controller#Action |
|------|-----|-------------------|
|GET   |/userratings|userratings#index   |
|POST   |/userratings   |userratings#create   |
|PUT   |/userratings/:id   |userratings#update   |
|DELETE   |/userratings/:id   |userratings#destroy   |

#### GET/userratings Response:
```
{
  "userratings": [
    {
      "id": 2,
      "rating": 5,
      "user_id": 1,
      "video_id": 1
    },
    {
      "id": 3,
      "rating": 5,
      "user_id": 1,
      "video_id": 2
    }
  ]
}
```

#### POST/userratings Response:
```
{
  "userrating": {
    "id": 2,
    "rating": 5,
    "user_id": 1,
    "video_id": 1
  }
}
```

#### PUT/userratings Response:
```
{
  "userrating": {
    "id": 2,
    "rating": 5,
    "user_id": 1,
    "video_id": 1
  }
}
```

#### DELETE/userratings Response:
```
HTTP/1.1 204 No Content
```
