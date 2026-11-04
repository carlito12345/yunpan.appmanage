.class public final Lq1/b;
.super Landroidx/lifecycle/r0;
.source "SourceFile"


# static fields
.field public static final e:Lha/j2;


# instance fields
.field public final d:La0/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lha/j2;

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lha/j2;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lq1/b;->e:Lha/j2;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/r0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, La0/u;

    .line 5
    .line 6
    invoke-direct {v0}, La0/u;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lq1/b;->d:La0/u;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lq1/b;->d:La0/u;

    .line 2
    .line 3
    iget v1, v0, La0/u;->c:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-gtz v1, :cond_1

    .line 7
    .line 8
    iget-object v3, v0, La0/u;->b:[Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    if-ge v4, v1, :cond_0

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    aput-object v5, v3, v4

    .line 15
    .line 16
    add-int/lit8 v4, v4, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput v2, v0, La0/u;->c:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {v0, v2}, La0/u;->e(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/lang/ClassCastException;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    throw v0

    .line 36
    :goto_2
    goto :goto_1
.end method
