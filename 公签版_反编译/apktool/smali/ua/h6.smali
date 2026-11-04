.class public final synthetic Lua/h6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lfa/z;
.implements Lc6/e;
.implements Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;
.implements Lfa/g;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityShell;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityShell;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/h6;->a:I

    iput-object p1, p0, Lua/h6;->b:Lcom/yunpan/appmanage/ui/ActivityShell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfa/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lua/h6;->b:Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 4
    .line 5
    iget-object p1, p1, Lfa/i;->c:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public e(Lfa/a0;)V
    .locals 10

    .line 1
    const-string v0, "\n\n\u8bd5\u56fe\u8bbe\u7f6e\u8bbe\u5907\u6240\u6709\u8005\uff0c\u4f46\u5df2\u7ecf\u8bbe\u7f6e\u4e86\u8bbe\u5907\u6240\u6709\u8005"

    .line 2
    .line 3
    const-string v1, "Trying to set the device owner, but device owner is already set"

    .line 4
    .line 5
    const-string v2, "\n\u60a8\u7684\u8bbe\u5907\u4e0a\u5df2\u6388\u6743\u6709\u5176\u5b83\u8bbe\u5907\u7ba1\u7406\u5458\uff0c\u8bf7\u5148\u53bb\u6389\uff0c\u53ea\u5141\u8bb8\u4e00\u4e2a\u8bbe\u5907\u7ba1\u7406\u5458"

    .line 6
    .line 7
    const-string v3, "Not allowed to set the device owner because "

    .line 8
    .line 9
    const-string v4, "\n\u6ca1\u6709\u627e\u5230start.sh\u6587\u4ef6\uff0c\u662f\u5426\u662f\u672a\u6253\u5f00\u8fc7\u6b64\u5e94\u7528\uff1f"

    .line 10
    .line 11
    const-string v5, "No such file or directory"

    .line 12
    .line 13
    const-string v6, "\u6fc0\u6d3b\u5931\u8d25"

    .line 14
    .line 15
    const-string v7, "\u6fc0\u6d3b\u6210\u529f"

    .line 16
    .line 17
    iget-object v8, p0, Lua/h6;->b:Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 18
    .line 19
    iget v9, p0, Lua/h6;->a:I

    .line 20
    .line 21
    packed-switch v9, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    sget v9, Lcom/yunpan/appmanage/ui/ActivityShell;->M:I

    .line 25
    .line 26
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lfa/a0;->a()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    iget p1, p1, Lfa/a0;->a:I

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    invoke-static {v7}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    invoke-virtual {v9, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v9, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    :cond_3
    :goto_0
    iget-object p1, v8, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 77
    .line 78
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :pswitch_0
    sget v9, Lcom/yunpan/appmanage/ui/ActivityShell;->M:I

    .line 83
    .line 84
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lfa/a0;->a()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    iget p1, p1, Lfa/a0;->a:I

    .line 92
    .line 93
    if-nez p1, :cond_4

    .line 94
    .line 95
    const-string p1, "Err:"

    .line 96
    .line 97
    invoke-virtual {v9, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_4

    .line 102
    .line 103
    invoke-static {v7}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    invoke-static {v6}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_5

    .line 115
    .line 116
    invoke-virtual {v9, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    goto :goto_1

    .line 121
    :cond_5
    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_6

    .line 126
    .line 127
    invoke-virtual {v9, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    goto :goto_1

    .line 132
    :cond_6
    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_7

    .line 137
    .line 138
    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    :cond_7
    :goto_1
    iget-object p1, v8, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lmc/b;)V
    .locals 5

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityShell;->M:I

    .line 2
    .line 3
    iget-object v0, p0, Lua/h6;->b:Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v3, Lfa/g0;->a:Lfa/h0;

    .line 16
    .line 17
    const-string v4, "/Download/\u6267\u884c\u547d\u4ee4\u7ed3\u679c.txt"

    .line 18
    .line 19
    invoke-static {v3, v2, v4}, Lg/b;->g(Lfa/h0;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    nop

    .line 38
    :goto_0
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v1, v0}, Lq4/a;->M(Ljava/io/File;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    const-string v0, "\u5df2\u5bfc\u51fa\u5728Download\u76ee\u5f55"

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-static {v0, v2}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/db/MyDb;->addIfFile(Ljava/io/File;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_0
    const-string v0, "\u5bfc\u51fa\u5931\u8d25"

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public onInBorderKeyEvent(ILandroid/view/View;)Z
    .locals 3

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityShell;->M:I

    .line 2
    .line 3
    iget-object v0, p0, Lua/h6;->b:Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x11

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq p1, v1, :cond_3

    .line 12
    .line 13
    const/16 v1, 0x42

    .line 14
    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 p2, 0x21

    .line 19
    .line 20
    if-ne p1, p2, :cond_1

    .line 21
    .line 22
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->C:Landroid/widget/EditText;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/16 p2, 0x82

    .line 29
    .line 30
    if-ne p1, p2, :cond_2

    .line 31
    .line 32
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 v2, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    :goto_0
    const/16 p1, 0x1bc

    .line 41
    .line 42
    invoke-static {p1, p2}, Ls1/g;->W(ILandroid/view/View;)V

    .line 43
    .line 44
    .line 45
    :goto_1
    return v2
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 6

    .line 1
    const/4 p1, 0x0

    .line 2
    sget v0, Lcom/yunpan/appmanage/ui/ActivityShell;->M:I

    .line 3
    .line 4
    iget-object v0, p0, Lua/h6;->b:Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 16
    .line 17
    invoke-virtual {v1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lx9/j1;

    .line 22
    .line 23
    iget-object v1, v1, Lx9/j1;->a:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->C:Landroid/widget/EditText;

    .line 26
    .line 27
    invoke-static {v2}, Lg/b;->f(Landroid/widget/EditText;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "adb shell "

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    const/16 v3, 0xa

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :cond_0
    const-string v3, "\u626b\u7801"

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/16 v4, 0x8

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->E:Landroid/widget/ImageView;

    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-nez v5, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v4, 0x0

    .line 65
    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    iget-object v3, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->E:Landroid/widget/ImageView;

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    :goto_1
    const-string v3, "\u672c\u673a\u6267\u884c"

    .line 75
    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    const-string v4, "\u8bf7\u8f93\u5165\u547d\u4ee4"

    .line 81
    .line 82
    if-eqz v3, :cond_4

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_3

    .line 89
    .line 90
    invoke-static {v4}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_6

    .line 94
    .line 95
    :cond_3
    invoke-virtual {v0, p3, v2}, Lcom/yunpan/appmanage/ui/ActivityShell;->A(ILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_6

    .line 99
    .line 100
    :cond_4
    const-string v3, "adb\u6267\u884c"

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_8

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_5

    .line 113
    .line 114
    invoke-static {v4}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_6

    .line 118
    .line 119
    :cond_5
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-static {}, La2/w0;->J()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_6

    .line 129
    .line 130
    invoke-virtual {v0, p3, v2}, Lcom/yunpan/appmanage/ui/ActivityShell;->y(ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_6

    .line 134
    .line 135
    :cond_6
    sget-object p1, Lfa/a;->a:Lfa/b;

    .line 136
    .line 137
    invoke-virtual {p1}, Lfa/b;->f()Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_7

    .line 142
    .line 143
    invoke-virtual {v0, p3, v2}, Lcom/yunpan/appmanage/ui/ActivityShell;->z(ILjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_6

    .line 147
    .line 148
    :cond_7
    invoke-virtual {v0, p3, v2}, Lcom/yunpan/appmanage/ui/ActivityShell;->y(ILjava/lang/String;)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_6

    .line 152
    .line 153
    :cond_8
    const-string v3, "\u96eb\u6267\u884c"

    .line 154
    .line 155
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eqz v3, :cond_b

    .line 160
    .line 161
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 162
    .line 163
    iget-boolean p1, p1, Lcom/yunpan/appmanage/util/w;->p:Z

    .line 164
    .line 165
    if-eqz p1, :cond_9

    .line 166
    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string p2, "\u4f60\u5728["

    .line 170
    .line 171
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const p2, 0x7f13016f

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string p2, "\u8bbe\u7f6e]\u91cc\u5df2\u52fe\u9009\u3010\u4e0d\u4f7f\u7528shizuku\u3011"

    .line 185
    .line 186
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_6

    .line 197
    .line 198
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_a

    .line 203
    .line 204
    invoke-static {v4}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_6

    .line 208
    .line 209
    :cond_a
    invoke-virtual {v0, p3, v2}, Lcom/yunpan/appmanage/ui/ActivityShell;->B(ILjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_6

    .line 213
    .line 214
    :cond_b
    const-string v3, "\u6fc0\u6d3b"

    .line 215
    .line 216
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-eqz v3, :cond_c

    .line 221
    .line 222
    new-instance p1, Landroid/widget/PopupMenu;

    .line 223
    .line 224
    iget-object p3, v0, Lda/g;->A:Lda/g;

    .line 225
    .line 226
    invoke-direct {p1, p3, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    const p3, 0x7f100003

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {p2, p3, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 241
    .line 242
    .line 243
    new-instance p2, Lha/y2;

    .line 244
    .line 245
    const/4 p3, 0x2

    .line 246
    invoke-direct {p2, v0, p3}, Lha/y2;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, p2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_6

    .line 256
    .line 257
    :cond_c
    const-string p2, "\u5feb\u6377\u6307\u4ee4"

    .line 258
    .line 259
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 260
    .line 261
    .line 262
    move-result p2

    .line 263
    if-eqz p2, :cond_d

    .line 264
    .line 265
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->H:Lha/lc;

    .line 266
    .line 267
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_6

    .line 271
    .line 272
    :cond_d
    const-string p2, "\u8fd4\u56de"

    .line 273
    .line 274
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 275
    .line 276
    .line 277
    move-result p2

    .line 278
    if-eqz p2, :cond_e

    .line 279
    .line 280
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_6

    .line 284
    .line 285
    :cond_e
    const-string p2, "\u5bfc\u51fa"

    .line 286
    .line 287
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 288
    .line 289
    .line 290
    move-result p2

    .line 291
    if-eqz p2, :cond_f

    .line 292
    .line 293
    new-instance p2, Lua/h6;

    .line 294
    .line 295
    invoke-direct {p2, v0, p1}, Lua/h6;-><init>(Lcom/yunpan/appmanage/ui/ActivityShell;I)V

    .line 296
    .line 297
    .line 298
    new-instance p3, Lmc/c;

    .line 299
    .line 300
    invoke-direct {p3, p1, p2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 304
    .line 305
    invoke-virtual {p3, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 310
    .line 311
    .line 312
    move-result-object p2

    .line 313
    invoke-virtual {p1, p2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    new-instance p2, Lha/l2;

    .line 318
    .line 319
    const/16 p3, 0x1c

    .line 320
    .line 321
    invoke-direct {p2, p3}, Lha/l2;-><init>(I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, p2}, Lec/b;->b(Lec/e;)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_6

    .line 328
    .line 329
    :cond_f
    const-string p2, "\u6e05\u7a7a"

    .line 330
    .line 331
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 332
    .line 333
    .line 334
    move-result p2

    .line 335
    const-string v3, ""

    .line 336
    .line 337
    if-eqz p2, :cond_10

    .line 338
    .line 339
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->C:Landroid/widget/EditText;

    .line 340
    .line 341
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    .line 343
    .line 344
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 345
    .line 346
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    .line 348
    .line 349
    goto/16 :goto_6

    .line 350
    .line 351
    :cond_10
    const-string p2, "\u7c98\u8d34"

    .line 352
    .line 353
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 354
    .line 355
    .line 356
    move-result p2

    .line 357
    if-eqz p2, :cond_15

    .line 358
    .line 359
    :try_start_0
    const-string p2, "clipboard"

    .line 360
    .line 361
    invoke-virtual {v0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object p2

    .line 365
    check-cast p2, Landroid/content/ClipboardManager;

    .line 366
    .line 367
    invoke-virtual {p2}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    .line 368
    .line 369
    .line 370
    move-result p3

    .line 371
    if-eqz p3, :cond_11

    .line 372
    .line 373
    invoke-virtual {p2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 374
    .line 375
    .line 376
    move-result-object p2

    .line 377
    if-eqz p2, :cond_11

    .line 378
    .line 379
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    .line 380
    .line 381
    .line 382
    move-result p3

    .line 383
    if-lez p3, :cond_11

    .line 384
    .line 385
    invoke-virtual {p2, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    if-eqz p1, :cond_11

    .line 394
    .line 395
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    goto :goto_2

    .line 400
    :catch_0
    nop

    .line 401
    :cond_11
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    if-eqz p1, :cond_12

    .line 406
    .line 407
    goto/16 :goto_6

    .line 408
    .line 409
    :cond_12
    :try_start_1
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->C:Landroid/widget/EditText;

    .line 410
    .line 411
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 412
    .line 413
    .line 414
    move-result p1

    .line 415
    iget-object p2, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->C:Landroid/widget/EditText;

    .line 416
    .line 417
    invoke-virtual {p2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    .line 418
    .line 419
    .line 420
    move-result-object p2

    .line 421
    if-ltz p1, :cond_14

    .line 422
    .line 423
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 424
    .line 425
    .line 426
    move-result p3

    .line 427
    if-lt p1, p3, :cond_13

    .line 428
    .line 429
    goto :goto_3

    .line 430
    :cond_13
    invoke-interface {p2, p1, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 431
    .line 432
    .line 433
    goto/16 :goto_6

    .line 434
    .line 435
    :catch_1
    move-exception p1

    .line 436
    goto :goto_4

    .line 437
    :cond_14
    :goto_3
    invoke-interface {p2, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 438
    .line 439
    .line 440
    goto/16 :goto_6

    .line 441
    .line 442
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    goto/16 :goto_6

    .line 446
    .line 447
    :cond_15
    const-string p1, "\u63a8\u9001"

    .line 448
    .line 449
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 450
    .line 451
    .line 452
    move-result p1

    .line 453
    if-eqz p1, :cond_17

    .line 454
    .line 455
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 456
    .line 457
    iget-object p2, p1, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 458
    .line 459
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 460
    .line 461
    .line 462
    move-result p2

    .line 463
    if-nez p2, :cond_16

    .line 464
    .line 465
    iget-object p1, p1, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 466
    .line 467
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 468
    .line 469
    .line 470
    move-result-object p1

    .line 471
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 472
    .line 473
    .line 474
    move-result p2

    .line 475
    if-eqz p2, :cond_18

    .line 476
    .line 477
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object p2

    .line 481
    check-cast p2, Lcom/yunpan/appmanage/util/d;

    .line 482
    .line 483
    iget-object p3, p2, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 484
    .line 485
    new-instance p3, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    const-string v0, "http://"

    .line 488
    .line 489
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    iget-object v1, p2, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 493
    .line 494
    const-string v3, ":9898/cmd"

    .line 495
    .line 496
    invoke-static {v1, v3, p3}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object p3

    .line 500
    new-instance v1, Ll9/b;

    .line 501
    .line 502
    invoke-direct {v1, p3}, Ll9/b;-><init>(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    iget-object p3, v1, Lm9/e;->i:Lk9/a;

    .line 506
    .line 507
    const-string v3, "User-Agent"

    .line 508
    .line 509
    const-string v4, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76"

    .line 510
    .line 511
    invoke-virtual {p3, v3, v4}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    new-instance v3, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    iget-object v0, p2, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 520
    .line 521
    const-string v4, ":9898/cmd.html"

    .line 522
    .line 523
    invoke-static {v0, v4, v3}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    const-string v3, "Referer"

    .line 528
    .line 529
    invoke-virtual {p3, v3, v0}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    new-instance p3, Ljava/lang/StringBuilder;

    .line 533
    .line 534
    const-string v0, "shareUrl=3"

    .line 535
    .line 536
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object p3

    .line 546
    const-string v0, "application/x-www-form-urlencoded; charset=UTF-8"

    .line 547
    .line 548
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    iput-object p3, v1, Lm9/a;->n:Ljava/lang/String;

    .line 553
    .line 554
    iput-object v0, v1, Lm9/a;->m:Lokhttp3/MediaType;

    .line 555
    .line 556
    new-instance p3, Lua/r1;

    .line 557
    .line 558
    const/4 v0, 0x1

    .line 559
    invoke-direct {p3, v0, p2}, Lua/r1;-><init>(ILjava/lang/Object;)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v1, p3}, Lm9/e;->b(Lnh/b;)V

    .line 563
    .line 564
    .line 565
    goto :goto_5

    .line 566
    :cond_16
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 567
    .line 568
    invoke-virtual {p1, p3}, Lc6/g;->C(I)V

    .line 569
    .line 570
    .line 571
    goto :goto_6

    .line 572
    :cond_17
    const-string p1, "\u505c\u6b62\u76d1\u542c"

    .line 573
    .line 574
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 575
    .line 576
    .line 577
    move-result p1

    .line 578
    if-nez p1, :cond_19

    .line 579
    .line 580
    :cond_18
    :goto_6
    return-void

    .line 581
    :cond_19
    const/4 p1, 0x0

    .line 582
    goto :goto_8

    .line 583
    :goto_7
    throw p1

    .line 584
    :goto_8
    goto :goto_7
.end method
