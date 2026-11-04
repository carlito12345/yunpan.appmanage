.class public Lorg/mozilla/universalchardet/prober/SBCSGroupProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SourceFile"


# instance fields
.field private activeNum:I

.field private bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private probers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/universalchardet/prober/CharsetProber;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    .line 10
    .line 11
    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 12
    .line 13
    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Win1251Model;

    .line 14
    .line 15
    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Win1251Model;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    .line 25
    .line 26
    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 27
    .line 28
    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Koi8rModel;

    .line 29
    .line 30
    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Koi8rModel;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    .line 40
    .line 41
    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 42
    .line 43
    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Latin5Model;

    .line 44
    .line 45
    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Latin5Model;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    .line 55
    .line 56
    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 57
    .line 58
    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/MacCyrillicModel;

    .line 59
    .line 60
    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/MacCyrillicModel;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    .line 70
    .line 71
    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 72
    .line 73
    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Ibm866Model;

    .line 74
    .line 75
    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Ibm866Model;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    .line 85
    .line 86
    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 87
    .line 88
    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Ibm855Model;

    .line 89
    .line 90
    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Ibm855Model;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    .line 100
    .line 101
    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 102
    .line 103
    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Latin7Model;

    .line 104
    .line 105
    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Latin7Model;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    .line 115
    .line 116
    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 117
    .line 118
    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Win1253Model;

    .line 119
    .line 120
    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Win1253Model;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    .line 130
    .line 131
    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 132
    .line 133
    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Latin5BulgarianModel;

    .line 134
    .line 135
    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Latin5BulgarianModel;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    .line 145
    .line 146
    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 147
    .line 148
    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Win1251BulgarianModel;

    .line 149
    .line 150
    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Win1251BulgarianModel;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    .line 160
    .line 161
    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 162
    .line 163
    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/ThaiModel;

    .line 164
    .line 165
    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/ThaiModel;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    new-instance v0, Lorg/mozilla/universalchardet/prober/sequence/HebrewModel;

    .line 175
    .line 176
    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/sequence/HebrewModel;-><init>()V

    .line 177
    .line 178
    .line 179
    new-instance v1, Lorg/mozilla/universalchardet/prober/HebrewProber;

    .line 180
    .line 181
    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/HebrewProber;-><init>()V

    .line 182
    .line 183
    .line 184
    new-instance v2, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 185
    .line 186
    const/4 v3, 0x0

    .line 187
    invoke-direct {v2, v0, v3, v1}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;ZLorg/mozilla/universalchardet/prober/CharsetProber;)V

    .line 188
    .line 189
    .line 190
    new-instance v3, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    .line 191
    .line 192
    const/4 v4, 0x1

    .line 193
    invoke-direct {v3, v0, v4, v1}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;ZLorg/mozilla/universalchardet/prober/CharsetProber;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v2, v3}, Lorg/mozilla/universalchardet/prober/HebrewProber;->setModalProbers(Lorg/mozilla/universalchardet/prober/CharsetProber;Lorg/mozilla/universalchardet/prober/CharsetProber;)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    .line 200
    .line 201
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    .line 205
    .line 206
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    .line 210
    .line 211
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->reset()V

    .line 215
    .line 216
    .line 217
    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->getConfidence()F

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 20
    .line 21
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public getConfidence()F
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 2
    .line 3
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const v0, 0x3f7d70a4    # 0.99f

    .line 8
    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    const v0, 0x3c23d70a    # 0.01f

    .line 16
    .line 17
    .line 18
    return v0

    .line 19
    :cond_1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_4

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 37
    .line 38
    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isActive()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    cmpg-float v4, v1, v3

    .line 50
    .line 51
    if-gez v4, :cond_2

    .line 52
    .line 53
    iput-object v2, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 54
    .line 55
    move v1, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_4
    return v1
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->filterWithoutEnglishLetters([BII)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object p2, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_5

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    check-cast p3, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 29
    .line 30
    invoke-virtual {p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isActive()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {p3, v0, v2, v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 51
    .line 52
    if-eq v0, v1, :cond_4

    .line 53
    .line 54
    const v3, 0x3f7d70a4    # 0.99f

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    cmpl-float v3, v3, v4

    .line 62
    .line 63
    if-nez v3, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 67
    .line 68
    if-ne v0, v1, :cond_1

    .line 69
    .line 70
    invoke-virtual {p3, v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->setActive(Z)V

    .line 71
    .line 72
    .line 73
    iget p3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    .line 74
    .line 75
    add-int/lit8 p3, p3, -0x1

    .line 76
    .line 77
    iput p3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    .line 78
    .line 79
    if-gtz p3, :cond_1

    .line 80
    .line 81
    iput-object v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    :goto_1
    iput-object p3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 85
    .line 86
    iput-object v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 87
    .line 88
    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 89
    .line 90
    return-object p1
.end method

.method public final reset()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    .line 3
    .line 4
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 21
    .line 22
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v1, v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->setActive(Z)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    .line 30
    .line 31
    add-int/2addr v1, v2

    .line 32
    iput v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 37
    .line 38
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 39
    .line 40
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 41
    .line 42
    return-void
.end method

.method public setOption()V
    .locals 0

    return-void
.end method
