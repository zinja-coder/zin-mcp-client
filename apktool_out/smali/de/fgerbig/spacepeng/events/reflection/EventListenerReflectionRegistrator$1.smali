.class Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "EventListenerReflectionRegistrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool",
        "<",
        "Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;


# direct methods
.method constructor <init>(Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 45
    iput-object p1, p0, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator$1;->this$0:Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator;

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/utils/Pool;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected newObject()Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;

    invoke-direct {v0}, Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lde/fgerbig/spacepeng/events/reflection/EventListenerReflectionRegistrator$1;->newObject()Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;

    move-result-object v0

    return-object v0
.end method
