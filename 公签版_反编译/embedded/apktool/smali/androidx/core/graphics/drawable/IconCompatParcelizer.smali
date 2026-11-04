.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Le/a;)Landroid/support/v4/graphics/drawable/IconCompat;
    .locals 8

    .line 1
    new-instance v0, Landroid/support/v4/graphics/drawable/IconCompat;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/support/v4/graphics/drawable/IconCompat;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v1, v2}, Le/a;->d(II)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    .line 14
    .line 15
    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    invoke-virtual {p0, v3}, Le/a;->c(I)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v1, p0

    .line 26
    check-cast v1, Le/b;

    .line 27
    .line 28
    iget-object v1, v1, Le/b;->b:Landroid/os/Parcel;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-gez v4, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-array v4, v4, [B

    .line 39
    .line 40
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 41
    .line 42
    .line 43
    move-object v1, v4

    .line 44
    :goto_0
    iput-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    .line 45
    .line 46
    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 47
    .line 48
    const/4 v4, 0x3

    .line 49
    invoke-virtual {p0, v1, v4}, Le/a;->e(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 54
    .line 55
    iget v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->e:I

    .line 56
    .line 57
    const/4 v5, 0x4

    .line 58
    invoke-virtual {p0, v1, v5}, Le/a;->d(II)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->e:I

    .line 63
    .line 64
    iget v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    .line 65
    .line 66
    const/4 v6, 0x5

    .line 67
    invoke-virtual {p0, v1, v6}, Le/a;->d(II)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    .line 72
    .line 73
    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 74
    .line 75
    const/4 v7, 0x6

    .line 76
    invoke-virtual {p0, v1, v7}, Le/a;->e(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroid/content/res/ColorStateList;

    .line 81
    .line 82
    iput-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 83
    .line 84
    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 85
    .line 86
    const/4 v7, 0x7

    .line 87
    invoke-virtual {p0, v7}, Le/a;->c(I)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-nez v7, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    check-cast p0, Le/b;

    .line 95
    .line 96
    iget-object p0, p0, Le/b;->b:Landroid/os/Parcel;

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :goto_1
    iput-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v1}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 109
    .line 110
    iget p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    .line 111
    .line 112
    const/4 v1, -0x1

    .line 113
    if-eq p0, v1, :cond_7

    .line 114
    .line 115
    if-eq p0, v2, :cond_5

    .line 116
    .line 117
    if-eq p0, v3, :cond_4

    .line 118
    .line 119
    if-eq p0, v4, :cond_3

    .line 120
    .line 121
    if-eq p0, v5, :cond_4

    .line 122
    .line 123
    if-eq p0, v6, :cond_5

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_3
    iget-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    .line 127
    .line 128
    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_4
    new-instance p0, Ljava/lang/String;

    .line 132
    .line 133
    iget-object v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    .line 134
    .line 135
    const-string v2, "UTF-16"

    .line 136
    .line 137
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 142
    .line 143
    .line 144
    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_5
    iget-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 148
    .line 149
    if-eqz p0, :cond_6

    .line 150
    .line 151
    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_6
    iget-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    .line 155
    .line 156
    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 157
    .line 158
    iput v4, v0, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    .line 159
    .line 160
    const/4 v1, 0x0

    .line 161
    iput v1, v0, Landroid/support/v4/graphics/drawable/IconCompat;->e:I

    .line 162
    .line 163
    array-length p0, p0

    .line 164
    iput p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_7
    iget-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 168
    .line 169
    if-eqz p0, :cond_8

    .line 170
    .line 171
    iput-object p0, v0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 172
    .line 173
    :goto_2
    return-object v0

    .line 174
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 175
    .line 176
    const-string v0, "Invalid icon"

    .line 177
    .line 178
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p0
.end method

.method public static write(Landroid/support/v4/graphics/drawable/IconCompat;Le/a;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->h:Landroid/graphics/PorterDuff$Mode;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 11
    .line 12
    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    .line 13
    .line 14
    const/4 v1, 0x5

    .line 15
    const/4 v2, 0x4

    .line 16
    const/4 v3, 0x3

    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x1

    .line 19
    const/4 v6, -0x1

    .line 20
    if-eq v0, v6, :cond_4

    .line 21
    .line 22
    if-eq v0, v5, :cond_3

    .line 23
    .line 24
    const-string v7, "UTF-16"

    .line 25
    .line 26
    if-eq v0, v4, :cond_2

    .line 27
    .line 28
    if-eq v0, v3, :cond_1

    .line 29
    .line 30
    if-eq v0, v2, :cond_0

    .line 31
    .line 32
    if-eq v0, v1, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, [B

    .line 55
    .line 56
    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Landroid/os/Parcelable;

    .line 77
    .line 78
    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Landroid/os/Parcelable;

    .line 84
    .line 85
    iput-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 86
    .line 87
    :goto_0
    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->a:I

    .line 88
    .line 89
    invoke-virtual {p1, v0, v5}, Le/a;->h(II)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->c:[B

    .line 93
    .line 94
    invoke-virtual {p1, v4}, Le/a;->g(I)V

    .line 95
    .line 96
    .line 97
    move-object v4, p1

    .line 98
    check-cast v4, Le/b;

    .line 99
    .line 100
    iget-object v4, v4, Le/b;->b:Landroid/os/Parcel;

    .line 101
    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    array-length v5, v0

    .line 105
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_5
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    .line 114
    .line 115
    :goto_1
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->d:Landroid/os/Parcelable;

    .line 116
    .line 117
    invoke-virtual {p1, v3}, Le/a;->g(I)V

    .line 118
    .line 119
    .line 120
    const/4 v3, 0x0

    .line 121
    invoke-virtual {v4, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 122
    .line 123
    .line 124
    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->e:I

    .line 125
    .line 126
    invoke-virtual {p1, v0, v2}, Le/a;->h(II)V

    .line 127
    .line 128
    .line 129
    iget v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->f:I

    .line 130
    .line 131
    invoke-virtual {p1, v0, v1}, Le/a;->h(II)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->g:Landroid/content/res/ColorStateList;

    .line 135
    .line 136
    const/4 v1, 0x6

    .line 137
    invoke-virtual {p1, v1}, Le/a;->g(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 141
    .line 142
    .line 143
    iget-object p0, p0, Landroid/support/v4/graphics/drawable/IconCompat;->i:Ljava/lang/String;

    .line 144
    .line 145
    const/4 v0, 0x7

    .line 146
    invoke-virtual {p1, v0}, Le/a;->g(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method
