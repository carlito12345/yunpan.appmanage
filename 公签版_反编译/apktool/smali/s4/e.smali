.class public final Ls4/e;
.super Lb5/c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final c:Ls4/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls4/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ls4/e;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ls4/e;->c:Ls4/e;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb5/c;-><init>(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 7

    .line 1
    check-cast p1, Ls4/e;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-ne p0, p1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, p0, Lb5/c;->b:[Ljava/lang/Object;

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    iget-object v2, p1, Lb5/c;->b:[Ljava/lang/Object;

    .line 11
    .line 12
    array-length v2, v2

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    if-ge v4, v3, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0, v4}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Ls4/d;

    .line 25
    .line 26
    invoke-virtual {p1, v4}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Ls4/d;

    .line 31
    .line 32
    invoke-virtual {v5, v6}, Ls4/d;->a(Ls4/d;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    move v0, v5

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    if-ge v1, v2, :cond_3

    .line 44
    .line 45
    const/4 v0, -0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    if-le v1, v2, :cond_4

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    :cond_4
    :goto_1
    return v0
.end method
