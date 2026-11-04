.class public final synthetic Lf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/gj/openfile/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gj/openfile/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/b;->a:Lcom/gj/openfile/MainActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    sget p1, Lcom/gj/openfile/MainActivity;->a:I

    .line 2
    .line 3
    iget-object p1, p0, Lf/b;->a:Lcom/gj/openfile/MainActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
