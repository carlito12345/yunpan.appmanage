.class public final synthetic Lua/y3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/n7;
.implements Lec/d;


# instance fields
.field public final synthetic a:Lua/w3;


# direct methods
.method public synthetic constructor <init>(Lua/w3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/y3;->a:Lua/w3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 4

    .line 1
    const-string v0, "screen_off_timeout"

    .line 2
    .line 3
    iget-object v1, p0, Lua/y3;->a:Lua/w3;

    .line 4
    .line 5
    iget-object v1, v1, Lua/w3;->b:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 6
    .line 7
    :try_start_0
    sget v2, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 8
    .line 9
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, -0x1

    .line 16
    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 17
    .line 18
    .line 19
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-nez v2, :cond_0

    .line 23
    .line 24
    :try_start_1
    sget v3, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 25
    .line 26
    iget-object v1, v1, Lda/g;->A:Lda/g;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const v3, 0x7fffffff

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 36
    .line 37
    .line 38
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    goto :goto_1

    .line 40
    :catch_1
    nop

    .line 41
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    .line 42
    .line 43
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const-string v0, "settings put system screen_off_timeout 2147483647"

    .line 49
    .line 50
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget v0, v0, Lfa/a0;->a:I

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    const-string v0, "\u4fee\u6539\u5931\u8d25"

    .line 59
    .line 60
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 65
    .line 66
    .line 67
    :goto_2
    return-void
.end method

.method public h(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/y3;->a:Lua/w3;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lha/o;

    .line 7
    .line 8
    const/16 v2, 0xc

    .line 9
    .line 10
    invoke-direct {v1, p1, v2, v0}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lmc/c;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p1, v0, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Lha/m6;

    .line 34
    .line 35
    const/16 v1, 0xc

    .line 36
    .line 37
    invoke-direct {v0, v1}, Lha/m6;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
