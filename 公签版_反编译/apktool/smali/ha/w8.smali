.class public final synthetic Lha/w8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ea;
.implements Lha/q0;


# instance fields
.field public final synthetic a:Lha/a9;

.field public final synthetic b:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;


# direct methods
.method public synthetic constructor <init>(Lha/a9;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/w8;->a:Lha/a9;

    iput-object p2, p0, Lha/w8;->b:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lha/w8;->a:Lha/a9;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lz7/s;

    .line 7
    .line 8
    invoke-direct {v1}, Lz7/s;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lha/w8;->b:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 12
    .line 13
    iget v2, v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "type"

    .line 20
    .line 21
    invoke-virtual {v1, v3, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "time"

    .line 31
    .line 32
    invoke-virtual {v1, v3, v2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "tag"

    .line 44
    .line 45
    invoke-virtual {v1, v3, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v3, "\u6bcf\u9694 "

    .line 51
    .line 52
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v4, " \u5206\u949f"

    .line 56
    .line 57
    invoke-static {v2, p1, v4}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-object v5, v0, Lha/a9;->s:Lz7/s;

    .line 62
    .line 63
    const-string v6, "name"

    .line 64
    .line 65
    invoke-virtual {v5, v6, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v2, "event"

    .line 69
    .line 70
    invoke-virtual {v5, v2, v1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Lha/a9;->b(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p3, p0, Lha/w8;->a:Lha/a9;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lha/w8;->b:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "\uff1a"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p3, p1}, Lha/a9;->b(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lz7/s;

    .line 34
    .line 35
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 36
    .line 37
    .line 38
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "type"

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 47
    .line 48
    .line 49
    const-string v1, "str1"

    .line 50
    .line 51
    invoke-virtual {v0, v1, p2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p3, Lha/a9;->s:Lz7/s;

    .line 55
    .line 56
    const-string p3, "name"

    .line 57
    .line 58
    invoke-virtual {p2, p3, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string p1, "event"

    .line 62
    .line 63
    invoke-virtual {p2, p1, v0}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
