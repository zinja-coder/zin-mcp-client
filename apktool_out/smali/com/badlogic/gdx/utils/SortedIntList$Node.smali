.class public Lcom/badlogic/gdx/utils/SortedIntList$Node;
.super Ljava/lang/Object;
.source "SortedIntList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/SortedIntList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public index:I

.field protected n:Lcom/badlogic/gdx/utils/SortedIntList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SortedIntList$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field protected p:Lcom/badlogic/gdx/utils/SortedIntList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SortedIntList$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    .local p0, "this":Lcom/badlogic/gdx/utils/SortedIntList$Node;, "Lcom/badlogic/gdx/utils/SortedIntList$Node<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
