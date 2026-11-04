.class public final synthetic Lha/x9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lv8/c;


# instance fields
.field public final synthetic a:Lha/ba;


# direct methods
.method public synthetic constructor <init>(Lha/ba;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/x9;->a:Lha/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lv8/a;Landroid/view/View;)V
    .locals 4

    .line 1
    check-cast p2, Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v0, p0, Lha/x9;->a:Lha/ba;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "\u505c\u6b62\u76d1\u542c"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v3, v0, Lha/a4;->b:Landroid/content/Context;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object p2, v0, Lha/ba;->j:Lg0/e;

    .line 27
    .line 28
    invoke-virtual {p2}, Lg0/e;->k()V

    .line 29
    .line 30
    .line 31
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    .line 32
    .line 33
    const-class v1, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    .line 34
    .line 35
    invoke-direct {p2, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    const/high16 v1, 0x10200000

    .line 43
    .line 44
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-static {v1, v3, p2}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    :catch_0
    iget-object p2, v0, Lha/ba;->i:Lx9/t0;

    .line 52
    .line 53
    iget-object v1, v0, Lha/ba;->n:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p2, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 56
    .line 57
    .line 58
    iget-object p2, v0, Lha/ba;->k:Landroid/widget/TextView;

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v2, "\u65e5\u5fd7\u6570\u91cf\uff1a"

    .line 63
    .line 64
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lv8/a;->g()V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v3}, Lif/a;->F0(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const p2, 0x7f0b05c0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Landroid/widget/TextView;

    .line 103
    .line 104
    iget-object p2, v0, Lha/ba;->j:Lg0/e;

    .line 105
    .line 106
    iget-object v1, v0, Lha/ba;->p:Ljava/util/HashMap;

    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    new-instance v2, Lma/b;

    .line 112
    .line 113
    const/4 v3, 0x4

    .line 114
    invoke-direct {v2, p2, v3, v1}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    new-instance p2, Lmc/c;

    .line 118
    .line 119
    const/4 v1, 0x0

    .line 120
    invoke-direct {p2, v1, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 124
    .line 125
    invoke-virtual {p2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {p2, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    new-instance v1, Lha/h3;

    .line 138
    .line 139
    const/4 v2, 0x5

    .line 140
    invoke-direct {v1, v0, v2, p1}, Lha/h3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2, v1}, Lec/b;->b(Lec/e;)V

    .line 144
    .line 145
    .line 146
    :goto_0
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lha/x9;->a:Lha/ba;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 7
    .line 8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v3, 0x1c

    .line 11
    .line 12
    if-lt v2, v3, :cond_0

    .line 13
    .line 14
    const-string v2, "ps -A"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v2, "ps"

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v1, v1, Lfa/a0;->b:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_7

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/String;

    .line 43
    .line 44
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const-string v3, "]"

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const-string v3, "@"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/4 v4, -0x1

    .line 65
    if-eq v3, v4, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const-string v3, " "

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-ne v5, v4, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 82
    .line 83
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const-string v6, "."

    .line 88
    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-nez v6, :cond_4

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-ne v6, v4, :cond_5

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 104
    .line 105
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-ne v3, v4, :cond_6

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_6
    const/4 v4, 0x0

    .line 121
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iget-object v3, v0, Lha/ba;->p:Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_7
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 132
    .line 133
    .line 134
    return-void
.end method
