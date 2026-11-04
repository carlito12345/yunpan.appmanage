.class public final Lha/te;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lx9/o5;

.field public i:Lua/r8;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0103

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b04f1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 12
    .line 13
    iput-object p1, p0, Lha/te;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 14
    .line 15
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 16
    .line 17
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v0, v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lx9/o5;

    .line 28
    .line 29
    invoke-direct {p1}, Lx9/o5;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lha/te;->h:Lx9/o5;

    .line 33
    .line 34
    iget-object v0, p0, Lha/te;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lha/te;->h:Lx9/o5;

    .line 40
    .line 41
    new-instance v0, Lha/p7;

    .line 42
    .line 43
    const/16 v1, 0x17

    .line 44
    .line 45
    invoke-direct {v0, v1, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 49
    .line 50
    new-instance v0, Lx9/n5;

    .line 51
    .line 52
    const-string v1, "\u84dd\u594f\u4e91"

    .line 53
    .line 54
    invoke-direct {v0, v2, v1}, Lx9/n5;-><init>(ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lha/te;->h:Lx9/o5;

    .line 61
    .line 62
    new-instance v0, Lx9/n5;

    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    const-string v2, "123\u4e91\u76d8"

    .line 66
    .line 67
    invoke-direct {v0, v1, v2}, Lx9/n5;-><init>(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lha/te;->h:Lx9/o5;

    .line 74
    .line 75
    new-instance v0, Lx9/n5;

    .line 76
    .line 77
    const/4 v1, 0x3

    .line 78
    const-string v2, "SMB"

    .line 79
    .line 80
    const/16 v3, 0x1bd

    .line 81
    .line 82
    invoke-direct {v0, v1, v2, v3}, Lx9/n5;-><init>(ILjava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lha/te;->h:Lx9/o5;

    .line 89
    .line 90
    new-instance v0, Lx9/n5;

    .line 91
    .line 92
    const/4 v1, 0x4

    .line 93
    const-string v2, "FTP"

    .line 94
    .line 95
    const/16 v3, 0x15

    .line 96
    .line 97
    invoke-direct {v0, v1, v2, v3}, Lx9/n5;-><init>(ILjava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lha/te;->h:Lx9/o5;

    .line 104
    .line 105
    new-instance v0, Lx9/n5;

    .line 106
    .line 107
    const/4 v1, 0x5

    .line 108
    const-string v2, "FTPS"

    .line 109
    .line 110
    invoke-direct {v0, v1, v2, v3}, Lx9/n5;-><init>(ILjava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lha/te;->h:Lx9/o5;

    .line 117
    .line 118
    new-instance v0, Lx9/n5;

    .line 119
    .line 120
    const/4 v1, 0x6

    .line 121
    const-string v2, "SFTP"

    .line 122
    .line 123
    const/16 v4, 0x16

    .line 124
    .line 125
    invoke-direct {v0, v1, v2, v4}, Lx9/n5;-><init>(ILjava/lang/String;I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lha/te;->h:Lx9/o5;

    .line 132
    .line 133
    new-instance v0, Lx9/n5;

    .line 134
    .line 135
    const/4 v1, 0x7

    .line 136
    const-string v2, "WebDAV"

    .line 137
    .line 138
    invoke-direct {v0, v1, v2}, Lx9/n5;-><init>(ILjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lha/te;->h:Lx9/o5;

    .line 145
    .line 146
    new-instance v0, Lx9/n5;

    .line 147
    .line 148
    const/16 v1, 0x14

    .line 149
    .line 150
    const-string v2, "\u5c0f\u98de\u673a"

    .line 151
    .line 152
    invoke-direct {v0, v1, v2}, Lx9/n5;-><init>(ILjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lha/te;->h:Lx9/o5;

    .line 159
    .line 160
    new-instance v0, Lx9/n5;

    .line 161
    .line 162
    const-string v1, "\u5149\u9e2d\u4e91\u76d8"

    .line 163
    .line 164
    invoke-direct {v0, v3, v1}, Lx9/n5;-><init>(ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    return-void
.end method
