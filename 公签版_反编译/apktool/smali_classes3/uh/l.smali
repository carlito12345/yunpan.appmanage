.class public final Luh/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luh/e;


# instance fields
.field public final a:Lwh/a;

.field public final b:Luh/b;

.field public volatile c:Luh/h;


# direct methods
.method public constructor <init>(Lwh/a;Luh/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Luh/l;->a:Lwh/a;

    .line 5
    .line 6
    iput-object p2, p0, Luh/l;->b:Luh/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/room/s;Ljava/lang/StringBuilder;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Luh/l;->a:Lwh/a;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/room/s;->m(Lwh/m;)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    iget-object v1, p0, Luh/l;->b:Luh/b;

    .line 12
    .line 13
    sget-object v2, Luh/s;->a:Luh/s;

    .line 14
    .line 15
    iget-object v1, v1, Luh/b;->a:Lcom/bumptech/glide/h;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/bumptech/glide/h;->a:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/Map;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    :goto_0
    const/4 v1, 0x1

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Luh/l;->c:Luh/h;

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    new-instance v0, Luh/h;

    .line 43
    .line 44
    iget-object v2, p0, Luh/l;->a:Lwh/a;

    .line 45
    .line 46
    const/16 v3, 0x13

    .line 47
    .line 48
    invoke-direct {v0, v2, v1, v3, v1}, Luh/h;-><init>(Lwh/m;III)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Luh/l;->c:Luh/h;

    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Luh/l;->c:Luh/h;

    .line 54
    .line 55
    invoke-virtual {v0, p1, p2}, Luh/h;->a(Landroidx/room/s;Ljava/lang/StringBuilder;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1

    .line 60
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Text("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Luh/l;->a:Lwh/a;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ")"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
