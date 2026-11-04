.class public final synthetic Lha/ld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;
.implements Lec/d;


# instance fields
.field public final synthetic a:Lha/md;


# direct methods
.method public synthetic constructor <init>(Lha/md;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/ld;->a:Lha/md;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lha/ld;->a:Lha/md;

    .line 2
    .line 3
    iget-object v1, v0, Lha/md;->h:Landroid/widget/EditText;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, ":"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    aget-object v2, v1, v4

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x1

    .line 33
    aget-object v1, v1, v3

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    move-object v6, v2

    .line 44
    move v2, v1

    .line 45
    move-object v1, v6

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/16 v2, 0x17

    .line 48
    .line 49
    :goto_0
    :try_start_0
    new-instance v3, Lgh/a;

    .line 50
    .line 51
    invoke-direct {v3}, Lgh/a;-><init>()V

    .line 52
    .line 53
    .line 54
    const/16 v5, 0x7d0

    .line 55
    .line 56
    iput v5, v3, Lch/d;->a:I

    .line 57
    .line 58
    invoke-virtual {v3, v1, v2}, Lch/d;->c(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v3}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iput-boolean v4, v0, Lha/md;->k:Z

    .line 65
    .line 66
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception v1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v3, "\u8fde\u63a5\u5931\u8d25\uff1a"

    .line 74
    .line 75
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v2}, Lg/b;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 79
    .line 80
    .line 81
    iput-boolean v4, v0, Lha/md;->k:Z

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    :goto_1
    return-void
.end method

.method public onPortChanged(Ljava/net/InetAddress;ILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object p3, p0, Lha/ld;->a:Lha/md;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v6, Lcom/yunpan/appmanage/util/d;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    move-object v0, v6

    .line 22
    move v5, p2

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/yunpan/appmanage/util/d;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p3, Lha/md;->l:Lx9/r2;

    .line 27
    .line 28
    invoke-virtual {p1, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lha/ld;->a:Lha/md;

    .line 2
    .line 3
    iget-object p2, p1, Lha/md;->h:Landroid/widget/EditText;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Lha/md;->l:Lx9/r2;

    .line 11
    .line 12
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/yunpan/appmanage/util/d;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/yunpan/appmanage/util/d;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ":"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/yunpan/appmanage/util/d;

    .line 33
    .line 34
    iget p1, p1, Lcom/yunpan/appmanage/util/d;->c:I

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
