.class Lcom/esotericsoftware/kryo/serializers/BeanSerializer$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/esotericsoftware/kryo/serializers/BeanSerializer;


# direct methods
.method constructor <init>(Lcom/esotericsoftware/kryo/serializers/BeanSerializer;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$1;->this$0:Lcom/esotericsoftware/kryo/serializers/BeanSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/beans/PropertyDescriptor;Ljava/beans/PropertyDescriptor;)I
    .locals 2

    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/beans/PropertyDescriptor;

    check-cast p2, Ljava/beans/PropertyDescriptor;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/BeanSerializer$1;->compare(Ljava/beans/PropertyDescriptor;Ljava/beans/PropertyDescriptor;)I

    move-result v0

    return v0
.end method
