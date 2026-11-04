.class public final Lc8/r;
.super Lz7/a0;
.source "SourceFile"


# static fields
.field public static final b:Lc8/q;


# instance fields
.field public final a:Lz7/y;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lz7/y;->b:Lz7/v;

    .line 2
    .line 3
    new-instance v1, Lc8/r;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lc8/r;-><init>(Lz7/y;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lc8/q;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, v2, v1}, Lc8/q;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lc8/r;->b:Lc8/q;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lz7/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz7/a0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc8/r;->a:Lz7/y;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lh8/a;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lh8/a;->e0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ld0/f;->c(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x5

    .line 10
    if-eq v1, v2, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x6

    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lh8/a;->a0()V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lz7/q;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "Expecting number, got: "

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lg/b;->B(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, "; at path "

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lh8/a;->O()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v1, p1}, Lz7/q;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :cond_1
    iget-object v0, p0, Lc8/r;->a:Lz7/y;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lz7/y;->a(Lh8/a;)Ljava/lang/Number;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :goto_0
    return-object p1
.end method

.method public final c(Lh8/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lh8/b;->W(Ljava/lang/Number;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
