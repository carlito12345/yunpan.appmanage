.class public final synthetic Ltb/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ltb/r;

.field public final synthetic b:Ltb/p;

.field public final synthetic c:Lsb/e;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/app/ProgressDialog;


# direct methods
.method public synthetic constructor <init>(Ltb/r;Ltb/p;Ljava/lang/String;Lsb/e;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltb/n;->a:Ltb/r;

    iput-object p2, p0, Ltb/n;->b:Ltb/p;

    iput-object p4, p0, Ltb/n;->c:Lsb/e;

    iput-object p5, p0, Ltb/n;->d:Ljava/lang/String;

    iput-object p6, p0, Ltb/n;->e:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Ltb/n;->b:Ltb/p;

    .line 2
    .line 3
    iget-object v1, p0, Ltb/n;->c:Lsb/e;

    .line 4
    .line 5
    iget-object v2, p0, Ltb/n;->d:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Ltb/n;->e:Landroid/app/ProgressDialog;

    .line 8
    .line 9
    iget-object v4, p0, Ltb/n;->a:Ltb/r;

    .line 10
    .line 11
    iget-object v5, v4, Ltb/r;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    invoke-virtual {v6}, Lmb/g;->D()Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    iget v0, v0, Ltb/p;->b:I

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    :goto_0
    iget v9, v1, Lsb/e;->b:I

    .line 30
    .line 31
    if-ge v7, v9, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1, v7}, Lsb/e;->c(I)J

    .line 34
    .line 35
    .line 36
    move-result-wide v9

    .line 37
    const/16 v11, 0x20

    .line 38
    .line 39
    shr-long v11, v9, v11

    .line 40
    .line 41
    long-to-int v12, v11

    .line 42
    const-wide v13, 0xffffffffL

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    and-long/2addr v9, v13

    .line 48
    long-to-int v10, v9

    .line 49
    sub-int v9, v10, v12

    .line 50
    .line 51
    iget-object v11, v4, Ltb/r;->d:Ltb/o;

    .line 52
    .line 53
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    add-int/2addr v12, v8

    .line 57
    add-int/2addr v10, v8

    .line 58
    invoke-virtual {v6, v12, v10, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    sub-int v9, v0, v9

    .line 62
    .line 63
    add-int/2addr v8, v9

    .line 64
    add-int/lit8 v7, v7, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    new-instance v0, La2/e0;

    .line 70
    .line 71
    const/16 v1, 0xc

    .line 72
    .line 73
    invoke-direct {v0, v4, v6, v3, v1}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->Z(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :goto_1
    new-instance v1, La2/e0;

    .line 81
    .line 82
    const/16 v2, 0xd

    .line 83
    .line 84
    invoke-direct {v1, v4, v0, v3, v2}, La2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->Z(Ljava/lang/Runnable;)V

    .line 88
    .line 89
    .line 90
    :goto_2
    return-void
.end method
