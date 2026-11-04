.class public final synthetic Lha/yd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic a:Lha/ge;


# direct methods
.method public synthetic constructor <init>(Lha/ge;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/yd;->a:Lha/ge;

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lha/yd;->a:Lha/ge;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_8

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v1, v0, Lha/ge;->B:Landroid/speech/tts/TextToSpeech;

    .line 11
    .line 12
    invoke-static {v1}, Lg7/d;->p(Landroid/speech/tts/TextToSpeech;)Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, v0, Lha/ge;->D:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const-string p1, "\u6b64TTS\u5f15\u64ce\u6ca1\u6709\u53ef\u7528\u7684\u8bed\u97f3"

    .line 29
    .line 30
    invoke-static {p1, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_0
    iput v1, v0, Lha/ge;->E:I

    .line 36
    .line 37
    iget-object p1, v0, Lha/ge;->n:Landroid/widget/TextView;

    .line 38
    .line 39
    iget-object v2, v0, Lha/ge;->D:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Lg7/d;->n(Ljava/lang/Object;)Landroid/speech/tts/Voice;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Lg7/d;->o(Landroid/speech/tts/Voice;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Ljava/util/ArrayList;

    .line 57
    .line 58
    iget-object v2, v0, Lha/ge;->B:Landroid/speech/tts/TextToSpeech;

    .line 59
    .line 60
    invoke-static {v2}, Lg7/d;->A(Landroid/speech/tts/TextToSpeech;)Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, v0, Lha/ge;->F:Ljava/util/ArrayList;

    .line 68
    .line 69
    const/4 p1, 0x0

    .line 70
    :goto_0
    const/4 v2, 0x3

    .line 71
    const/4 v3, -0x1

    .line 72
    if-ge p1, v2, :cond_6

    .line 73
    .line 74
    if-nez p1, :cond_1

    .line 75
    .line 76
    const-string v2, "\u7b80\u4f53"

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    const/4 v2, 0x1

    .line 80
    if-ne p1, v2, :cond_2

    .line 81
    .line 82
    const-string v2, "\u4e2d\u6587"

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const-string v2, "\u4e2d\u56fd"

    .line 86
    .line 87
    :goto_1
    const/4 v4, 0x0

    .line 88
    :goto_2
    iget-object v5, v0, Lha/ge;->F:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-ge v4, v5, :cond_4

    .line 95
    .line 96
    iget-object v5, v0, Lha/ge;->F:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    check-cast v5, Ljava/util/Locale;

    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eqz v5, :cond_3

    .line 113
    .line 114
    iput v4, v0, Lha/ge;->G:I

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    :goto_3
    iget v2, v0, Lha/ge;->G:I

    .line 121
    .line 122
    if-eq v2, v3, :cond_5

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_6
    :goto_4
    iget p1, v0, Lha/ge;->G:I

    .line 129
    .line 130
    if-ne p1, v3, :cond_7

    .line 131
    .line 132
    iput v1, v0, Lha/ge;->G:I

    .line 133
    .line 134
    :cond_7
    iget-object p1, v0, Lha/ge;->q:Landroid/widget/TextView;

    .line 135
    .line 136
    iget-object v1, v0, Lha/ge;->F:Ljava/util/ArrayList;

    .line 137
    .line 138
    iget v0, v0, Lha/ge;->G:I

    .line 139
    .line 140
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Ljava/util/Locale;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_8
    const-string p1, "\u6b64TTS\u5f15\u64ce\u521d\u59cb\u5316\u5931\u8d25\uff0c\u4e0d\u53ef\u7528"

    .line 155
    .line 156
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    :goto_5
    return-void
.end method
