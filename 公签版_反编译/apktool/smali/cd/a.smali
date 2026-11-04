.class public final Lcd/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvc/g;


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Lvd/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final i(II[B)I
    .locals 1

    .line 1
    add-int/lit8 p2, p1, 0x1

    .line 2
    .line 3
    aget-byte v0, p3, p1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iput-boolean v0, p0, Lcd/a;->a:Z

    .line 11
    .line 12
    add-int/lit8 v0, p1, 0x2

    .line 13
    .line 14
    aget-byte p2, p3, p2

    .line 15
    .line 16
    and-int/lit16 p2, p2, 0xff

    .line 17
    .line 18
    iput p2, p0, Lcd/a;->b:I

    .line 19
    .line 20
    invoke-static {v0, p3}, Lrd/a;->a(I[B)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    add-int/lit8 v0, p1, 0x4

    .line 25
    .line 26
    invoke-static {v0, p3}, Lrd/a;->b(I[B)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcd/a;->c:I

    .line 31
    .line 32
    add-int/lit8 p1, p1, 0x8

    .line 33
    .line 34
    new-instance v0, Lvd/m;

    .line 35
    .line 36
    invoke-direct {v0, p3, p1}, Lvd/m;-><init>([BI)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcd/a;->d:Lvd/m;

    .line 40
    .line 41
    return p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcd/a;->a:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "Allow "

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "Deny  "

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcd/a;->d:Lvd/m;

    .line 19
    .line 20
    iget-object v2, v1, Lvd/m;->e:Ljava/lang/String;

    .line 21
    .line 22
    const/16 v3, 0x8

    .line 23
    .line 24
    const/4 v4, 0x3

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    const-string v5, "BUILTIN"

    .line 28
    .line 29
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-object v1, v1, Lvd/m;->f:Ljava/lang/String;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v5, v1, Lvd/m;->e:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v5, "\\"

    .line 49
    .line 50
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, v1, Lvd/m;->f:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {v1}, Lvd/m;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    rsub-int/lit8 v1, v1, 0x19

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    const/4 v5, 0x0

    .line 78
    :goto_2
    const/16 v6, 0x20

    .line 79
    .line 80
    if-ge v5, v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    .line 84
    .line 85
    add-int/lit8 v5, v5, 0x1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    const-string v1, " 0x"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    .line 92
    .line 93
    iget v1, p0, Lcd/a;->c:I

    .line 94
    .line 95
    invoke-static {v1, v3}, Lge/a;->l(II)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    .line 104
    .line 105
    iget v1, p0, Lcd/a;->b:I

    .line 106
    .line 107
    and-int/lit8 v1, v1, 0x10

    .line 108
    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    const-string v1, "Inherited "

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    const-string v1, "Direct    "

    .line 115
    .line 116
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    .line 118
    .line 119
    iget v1, p0, Lcd/a;->b:I

    .line 120
    .line 121
    and-int/lit8 v1, v1, 0xb

    .line 122
    .line 123
    if-eqz v1, :cond_8

    .line 124
    .line 125
    const/4 v3, 0x1

    .line 126
    if-eq v1, v3, :cond_7

    .line 127
    .line 128
    const/4 v3, 0x2

    .line 129
    if-eq v1, v3, :cond_6

    .line 130
    .line 131
    if-eq v1, v4, :cond_5

    .line 132
    .line 133
    packed-switch v1, :pswitch_data_0

    .line 134
    .line 135
    .line 136
    const-string v1, "Invalid"

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :pswitch_0
    const-string v1, "Subfolders and files only"

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :pswitch_1
    const-string v1, "Subfolders only"

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :pswitch_2
    const-string v1, "Files only"

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_5
    const-string v1, "This folder, subfolders and files"

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_6
    const-string v1, "This folder and subfolders"

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_7
    const-string v1, "This folder and files"

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_8
    const-string v1, "This folder only"

    .line 158
    .line 159
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    rsub-int/lit8 v1, v1, 0x22

    .line 167
    .line 168
    :goto_5
    if-ge v2, v1, :cond_9

    .line 169
    .line 170
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 171
    .line 172
    .line 173
    add-int/lit8 v2, v2, 0x1

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    return-object v0

    .line 181
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
