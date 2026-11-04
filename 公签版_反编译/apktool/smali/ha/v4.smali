.class public final Lha/v4;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Lua/d1;

.field public h:Landroidx/appcompat/widget/AppCompatSeekBar;

.field public i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public j:Lx9/y0;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lda/g;Lua/d1;)V
    .locals 1

    .line 1
    const v0, 0x7f0e009b

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lha/v4;->g:Lua/d1;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 5
    .line 6
    const-string v0, "CodeEditor"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v2, 0x7f0b0563

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 21
    .line 22
    iput-object v2, p0, Lha/v4;->h:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 23
    .line 24
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v4, 0x1a

    .line 27
    .line 28
    if-lt v3, v4, :cond_0

    .line 29
    .line 30
    invoke-static {v2}, Leg/a;->x(Landroidx/appcompat/widget/AppCompatSeekBar;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v2, p0, Lha/v4;->h:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 34
    .line 35
    const/16 v3, 0x32

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lha/v4;->h:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 41
    .line 42
    const-string v3, "size"

    .line 43
    .line 44
    const/16 v4, 0x12

    .line 45
    .line 46
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lha/v4;->h:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 54
    .line 55
    new-instance v3, Lha/u4;

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-direct {v3, p0, v4, v0}, Lha/u4;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 62
    .line 63
    .line 64
    const v2, 0x7f0b04f8

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 72
    .line 73
    iput-object v2, p0, Lha/v4;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 74
    .line 75
    new-instance v3, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 76
    .line 77
    const/4 v4, 0x3

    .line 78
    invoke-direct {v3, p1, v4}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Lx9/y0;

    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    invoke-direct {p1, v2}, Lx9/y0;-><init>(Z)V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lha/v4;->j:Lx9/y0;

    .line 91
    .line 92
    new-instance v3, Lx9/x0;

    .line 93
    .line 94
    const-string v4, "auto_line"

    .line 95
    .line 96
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    const-string v5, "\u81ea\u52a8\u6362\u884c"

    .line 101
    .line 102
    invoke-direct {v3, v5, v4}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lha/v4;->j:Lx9/y0;

    .line 109
    .line 110
    new-instance v3, Lx9/x0;

    .line 111
    .line 112
    const-string v4, "show_line_number"

    .line 113
    .line 114
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    const-string v5, "\u663e\u793a\u884c\u53f7"

    .line 119
    .line 120
    invoke-direct {v3, v5, v4}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lha/v4;->j:Lx9/y0;

    .line 127
    .line 128
    new-instance v3, Lx9/x0;

    .line 129
    .line 130
    const-string v4, "gesture_scale"

    .line 131
    .line 132
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    const-string v4, "\u624b\u52bf\u7f29\u653e"

    .line 137
    .line 138
    invoke-direct {v3, v4, v1}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lha/v4;->j:Lx9/y0;

    .line 145
    .line 146
    new-instance v1, Lx9/x0;

    .line 147
    .line 148
    const-string v3, "highlight_current_line"

    .line 149
    .line 150
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    const-string v4, "\u5f53\u524d\u884c\u53d8\u8272"

    .line 155
    .line 156
    invoke-direct {v1, v4, v3}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lha/v4;->j:Lx9/y0;

    .line 163
    .line 164
    new-instance v1, Lx9/x0;

    .line 165
    .line 166
    const-string v3, "auto_indent"

    .line 167
    .line 168
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    const-string v3, "\u81ea\u52a8\u7f29\u8fdb"

    .line 173
    .line 174
    invoke-direct {v1, v3, v2}, Lx9/x0;-><init>(Ljava/lang/String;Z)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lha/v4;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 181
    .line 182
    iget-object v1, p0, Lha/v4;->j:Lx9/y0;

    .line 183
    .line 184
    invoke-virtual {p1, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lha/v4;->j:Lx9/y0;

    .line 188
    .line 189
    new-instance v1, La2/g1;

    .line 190
    .line 191
    const/16 v2, 0x13

    .line 192
    .line 193
    const/4 v3, 0x0

    .line 194
    invoke-direct {v1, v2, p0, v0, v3}, La2/g1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 195
    .line 196
    .line 197
    iput-object v1, p1, Lc6/g;->e:Lc6/e;

    .line 198
    .line 199
    return-void
.end method
