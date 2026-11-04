.class public final synthetic Lf2/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1/f;


# instance fields
.field public final synthetic a:Lb2/d;

.field public final synthetic b:Lf2/t;

.field public final synthetic c:Lf2/y;

.field public final synthetic d:Ljava/io/IOException;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lb2/d;Lf2/t;Lf2/y;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/g0;->a:Lb2/d;

    iput-object p2, p0, Lf2/g0;->b:Lf2/t;

    iput-object p3, p0, Lf2/g0;->c:Lf2/y;

    iput-object p4, p0, Lf2/g0;->d:Ljava/io/IOException;

    iput-boolean p5, p0, Lf2/g0;->e:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lf2/i0;

    .line 3
    .line 4
    iget-object p1, p0, Lf2/g0;->a:Lb2/d;

    .line 5
    .line 6
    iget v1, p1, Lb2/d;->a:I

    .line 7
    .line 8
    iget-object v2, p1, Lb2/d;->b:Lf2/c0;

    .line 9
    .line 10
    iget-object v3, p0, Lf2/g0;->b:Lf2/t;

    .line 11
    .line 12
    iget-object v4, p0, Lf2/g0;->c:Lf2/y;

    .line 13
    .line 14
    iget-object v5, p0, Lf2/g0;->d:Ljava/io/IOException;

    .line 15
    .line 16
    iget-boolean v6, p0, Lf2/g0;->e:Z

    .line 17
    .line 18
    invoke-interface/range {v0 .. v6}, Lf2/i0;->c(ILf2/c0;Lf2/t;Lf2/y;Ljava/io/IOException;Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
