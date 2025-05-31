.class Lde/fgerbig/spacepeng/events/InternalEventManager$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "InternalEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/fgerbig/spacepeng/events/InternalEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool",
        "<",
        "Lde/fgerbig/spacepeng/events/Event;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/fgerbig/spacepeng/events/InternalEventManager;


# direct methods
.method constructor <init>(Lde/fgerbig/spacepeng/events/InternalEventManager;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 26
    iput-object p1, p0, Lde/fgerbig/spacepeng/events/InternalEventManager$1;->this$0:Lde/fgerbig/spacepeng/events/InternalEventManager;

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/utils/Pool;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected newObject()Lde/fgerbig/spacepeng/events/Event;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lde/fgerbig/spacepeng/events/Event;

    invoke-direct {v0}, Lde/fgerbig/spacepeng/events/Event;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/events/InternalEventManager$1;->newObject()Lde/fgerbig/spacepeng/events/Event;

    move-result-object v0

    return-object v0
.end method
