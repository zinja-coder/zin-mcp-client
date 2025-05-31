.class Lde/fgerbig/spacepeng/utils/RandomAccessSet$1;
.super Ljava/lang/Object;
.source "RandomAccessSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/fgerbig/spacepeng/utils/RandomAccessSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/fgerbig/spacepeng/utils/RandomAccessSet;

.field final synthetic val$arrayListIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lde/fgerbig/spacepeng/utils/RandomAccessSet;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 51
    .local p0, "this":Lde/fgerbig/spacepeng/utils/RandomAccessSet$1;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet.1;"
    iput-object p1, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet$1;->this$0:Lde/fgerbig/spacepeng/utils/RandomAccessSet;

    iput-object p2, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet$1;->val$arrayListIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lde/fgerbig/spacepeng/utils/RandomAccessSet$1;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet.1;"
    iget-object v0, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet$1;->val$arrayListIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lde/fgerbig/spacepeng/utils/RandomAccessSet$1;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet.1;"
    iget-object v0, p0, Lde/fgerbig/spacepeng/utils/RandomAccessSet$1;->val$arrayListIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lde/fgerbig/spacepeng/utils/RandomAccessSet$1;, "Lde/fgerbig/spacepeng/utils/RandomAccessSet.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
