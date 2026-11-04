.class public final Lv3/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr1/w0;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr1/x0;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lr1/x0;->a:Lu7/g0;

    .line 5
    .line 6
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lr1/w0;

    .line 11
    .line 12
    iput-object p1, p0, Lv3/q;->a:Lr1/w0;

    .line 13
    .line 14
    iput p3, p0, Lv3/q;->b:I

    .line 15
    .line 16
    iput-object p4, p0, Lv3/q;->c:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method
