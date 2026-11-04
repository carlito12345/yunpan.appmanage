.class public final synthetic Lha/f8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lea/e;


# direct methods
.method public synthetic constructor <init>(ILea/e;)V
    .locals 0

    .line 1
    iput p1, p0, Lha/f8;->a:I

    iput-object p2, p0, Lha/f8;->b:Lea/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Lz7/s;)V
    .locals 2

    .line 1
    iget v0, p0, Lha/f8;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "keyType"

    .line 8
    .line 9
    invoke-virtual {p1, v1, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lha/f8;->b:Lea/e;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lea/e;->k(Lz7/s;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
