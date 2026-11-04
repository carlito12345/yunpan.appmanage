.class public final La2/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La2/t;

    .line 2
    .line 3
    invoke-direct {v0}, La2/t;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, La2/t;->a()La2/u;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(La2/t;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p1, La2/t;->a:Z

    .line 5
    .line 6
    iput-boolean v0, p0, La2/u;->a:Z

    .line 7
    .line 8
    iget-boolean v0, p1, La2/t;->b:Z

    .line 9
    .line 10
    iput-boolean v0, p0, La2/u;->b:Z

    .line 11
    .line 12
    iget-boolean v0, p1, La2/t;->c:Z

    .line 13
    .line 14
    iput-boolean v0, p0, La2/u;->c:Z

    .line 15
    .line 16
    iget p1, p1, La2/t;->d:I

    .line 17
    .line 18
    iput p1, p0, La2/u;->d:I

    .line 19
    .line 20
    return-void
.end method
